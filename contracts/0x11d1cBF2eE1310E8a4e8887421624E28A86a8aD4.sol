contract main {




// =====================  Runtime code  =====================


const sub_6637e38c(?) = 10000


address feeDestinationAddress;
uint256 feeBps;
address sub_c9c667e3Address;
address sub_a1668e5bAddress;
mapping of uint256 sub_644cddb4;
mapping of uint256 sub_68ded33c;

function feeBps() payable {
    return feeBps
}

function sub_644cddb4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_644cddb4[arg1][arg2]
}

function sub_68ded33c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_68ded33c[arg1][arg2]
}

function sub_a1668e5b(?) payable {
    return sub_a1668e5bAddress
}

function sub_c9c667e3(?) payable {
    return sub_c9c667e3Address
}

function feeDestination() payable {
    return feeDestinationAddress
}

function _fallback() payable {
    revert
}

function setFeeBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_c9c667e3Address != msg.sender:
        revert with 0, '!configMgr'
    if arg1 >= 10000:
        revert with 0, '!configMgr'
    feeBps = arg1
}

function setMushmons(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_c9c667e3Address != msg.sender:
        revert with 0, '!mushmons'
    if not arg1:
        revert with 0, '!mushmons'
    sub_a1668e5bAddress = arg1
}

function setConfigMgr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_c9c667e3Address != msg.sender:
        revert with 0, '!configMgr'
    if not arg1:
        revert with 0, '!configMgr'
    sub_c9c667e3Address = arg1
}

function setFeeDestination(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_c9c667e3Address != msg.sender:
        revert with 0, '!configMgr'
    if not arg1:
        revert with 0, '!configMgr'
    feeDestinationAddress = arg1
}

function sub_f605bf6c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require ('cd', 36).length >= 64
    if ('cd', 36)[0] <= 0:
        if ('cd', 36)[1] > 0:
            if ('cd', 36)[1] < 10000:
                sub_68ded33c[address(msg.sender)][address(cd[4])] = ('cd', 36)[1]
    else:
        if ('cd', 36)[0] < 10000:
            sub_644cddb4[address(msg.sender)][address(cd[4])] = ('cd', 36)[0]
        if ('cd', 36)[1] > 0:
            if ('cd', 36)[1] < 10000:
                sub_68ded33c[address(msg.sender)][address(cd[4])] = ('cd', 36)[1]
}

function sub_4705e6db(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    if sub_a1668e5bAddress != msg.sender:
        revert with 0, '!mushmons'
    require ('cd', 68).length >= 64
    if ('cd', 68)[0] <= 0:
        if ('cd', 68)[1] > 0:
            if ('cd', 68)[1] < 10000:
                sub_68ded33c[address(cd[4])][address(cd[36])] = ('cd', 68)[1]
    else:
        if ('cd', 68)[0] < 10000:
            sub_644cddb4[address(cd[4])][address(cd[36])] = ('cd', 68)[0]
        if ('cd', 68)[1] > 0:
            if ('cd', 68)[1] < 10000:
                sub_68ded33c[address(cd[4])][address(cd[36])] = ('cd', 68)[1]
}

function sub_442cf97b(?) payable {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require calldata.size + -cd[68] - 4 >= 352
    require ('cd', 68).length == address(('cd', 68).length)
    require ('cd', 68)[0] == address(('cd', 68)[0])
    require ('cd', 68)[9] <= test266151307()
    require cd[68] + ('cd', 68)[9] + 35 < calldata.size
    require cd[(cd[68] + ('cd', 68)[9] + 4)] <= test266151307()
    require ceil32(cd[(cd[68] + ('cd', 68)[9] + 4)]) + 480 >= 448 and ceil32(cd[(cd[68] + ('cd', 68)[9] + 4)]) + 480 <= test266151307()
    require cd[68] + ('cd', 68)[9] + cd[(cd[68] + ('cd', 68)[9] + 4)] + 36 <= calldata.size
    if not cd[4]:
        if not 10^('cd', 68)[7]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / 10^('cd', 68)[7]:
            if not cd[36]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / cd[36])
        if 10^('cd', 68)[8] * 0 / 10^('cd', 68)[7] / 0 / 10^('cd', 68)[7] != 10^('cd', 68)[8]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not cd[36]:
            revert with 0, 'SafeMath: division by zero', 0
        return (10^('cd', 68)[8] * 0 / 10^('cd', 68)[7] / cd[36])
    if ('cd', 68)[1] * cd[4] / cd[4] != ('cd', 68)[1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^('cd', 68)[7]:
        revert with 0, 'SafeMath: division by zero', 0
    if not ('cd', 68)[1] * cd[4] / 10^('cd', 68)[7]:
        if not cd[36]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / cd[36])
    if 10^('cd', 68)[8] * ('cd', 68)[1] * cd[4] / 10^('cd', 68)[7] / ('cd', 68)[1] * cd[4] / 10^('cd', 68)[7] != 10^('cd', 68)[8]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not cd[36]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^('cd', 68)[8] * ('cd', 68)[1] * cd[4] / 10^('cd', 68)[7] / cd[36])
}

function sub_6ca7d7be(?) payable {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require calldata.size + -cd[68] - 4 >= 352
    require ('cd', 68).length == address(('cd', 68).length)
    require ('cd', 68)[0] == address(('cd', 68)[0])
    require ('cd', 68)[9] <= test266151307()
    require cd[68] + ('cd', 68)[9] + 35 < calldata.size
    require cd[(cd[68] + ('cd', 68)[9] + 4)] <= test266151307()
    require ceil32(cd[(cd[68] + ('cd', 68)[9] + 4)]) + 480 >= 448 and ceil32(cd[(cd[68] + ('cd', 68)[9] + 4)]) + 480 <= test266151307()
    require cd[68] + ('cd', 68)[9] + cd[(cd[68] + ('cd', 68)[9] + 4)] + 36 <= calldata.size
    if not cd[4]:
        if not 10^('cd', 68)[8]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / 10^('cd', 68)[8]:
            if not ('cd', 68)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / ('cd', 68)[1])
        if 10^('cd', 68)[7] * 0 / 10^('cd', 68)[8] / 0 / 10^('cd', 68)[8] != 10^('cd', 68)[7]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ('cd', 68)[1]:
            revert with 0, 'SafeMath: division by zero', 0
        return (10^('cd', 68)[7] * 0 / 10^('cd', 68)[8] / ('cd', 68)[1])
    if cd[36] * cd[4] / cd[4] != cd[36]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^('cd', 68)[8]:
        revert with 0, 'SafeMath: division by zero', 0
    if not cd[36] * cd[4] / 10^('cd', 68)[8]:
        if not ('cd', 68)[1]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ('cd', 68)[1])
    if 10^('cd', 68)[7] * cd[36] * cd[4] / 10^('cd', 68)[8] / cd[36] * cd[4] / 10^('cd', 68)[8] != 10^('cd', 68)[7]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ('cd', 68)[1]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^('cd', 68)[7] * cd[36] * cd[4] / 10^('cd', 68)[8] / ('cd', 68)[1])
}

function sub_7446b48d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 352
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[9] <= test266151307()
    require cd[4] + ('cd', 4)[9] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[9] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + 480 >= 448 and ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)]) + 480 <= test266151307()
    require cd[4] + ('cd', 4)[9] + cd[(cd[4] + ('cd', 4)[9] + 4)] + 36 <= calldata.size
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ('cd', 4)[4]:
        if not 10^('cd', 4)[7]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / 10^('cd', 4)[7]:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not ('cd', 4)[5]:
                if ('cd', 4)[1] <= ('cd', 4)[2]:
                    if not sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        revert with 0, '!noIncExpoSetting'
                    if ('cd', 4)[1] > ('cd', 4)[2]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not ('cd', 4)[2] - ('cd', 4)[1]:
                        if not ('cd', 4)[2]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if 0 / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                            return 0, 1, 0, ('cd', 4)[1]
                    else:
                        if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] - ('cd', 4)[1] != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ('cd', 4)[2]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                            return 0, 1, 0, ('cd', 4)[1]
                    if 0 <= 0 / 10^uint8(ext_call.return_data[0]):
                        return 0, 1, 0, ('cd', 4)[1]
                    if 0 / 10^uint8(ext_call.return_data[0]) > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -0 / 10^uint8(ext_call.return_data[0]) / 2 > ('cd', 4)[5]:
                        return 1, 1, ('cd', 4)[5], ('cd', 4)[1]
                    return 1, 1, Mask(255, 1, -0 / 10^uint8(ext_call.return_data[0])), ('cd', 4)[1]
                if not sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    revert with 0, '!noDecExpoSetting'
                if ('cd', 4)[2] > ('cd', 4)[1]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not ('cd', 4)[1] - ('cd', 4)[2]:
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 0, 0, ('cd', 4)[1]
                else:
                    if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[1] - ('cd', 4)[2] != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 0, 0, ('cd', 4)[1]
                if 0 / 10^uint8(ext_call.return_data[0]) <= 0:
                    return 0, 0, 0, ('cd', 4)[1]
                if 0 > 0 / 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not 0 / 10^uint8(ext_call.return_data[0]) / 2:
                    if not 10^('cd', 4)[8]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / 10^('cd', 4)[8]:
                        if not ('cd', 4)[1]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                            return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                        return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
                    if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / 0 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ('cd', 4)[1]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                        return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                    return 1, 0, 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1], ('cd', 4)[1]
                if 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 0 / 10^uint8(ext_call.return_data[0]) / 2 != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10^('cd', 4)[8]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8]:
                    if not ('cd', 4)[1]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                        return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                    return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
                if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 
                       0,
                       10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1],
                       ('cd', 4)[1]
            if ('cd', 4)[6] * ('cd', 4)[5] / ('cd', 4)[5] != ('cd', 4)[6]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ('cd', 4)[1] <= ('cd', 4)[2]:
                if not sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    revert with 0, '!noIncExpoSetting'
                if ('cd', 4)[1] > ('cd', 4)[2]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not ('cd', 4)[2] - ('cd', 4)[1]:
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 1, 0, ('cd', 4)[1]
                else:
                    if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] - ('cd', 4)[1] != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 1, 0, ('cd', 4)[1]
                if ('cd', 4)[6] * ('cd', 4)[5] / 10000 <= 0 / 10^uint8(ext_call.return_data[0]):
                    return 0, 1, 0, ('cd', 4)[1]
                if 0 / 10^uint8(ext_call.return_data[0]) > ('cd', 4)[6] * ('cd', 4)[5] / 10000:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (('cd', 4)[6] * ('cd', 4)[5] / 10000) - (0 / 10^uint8(ext_call.return_data[0])) / 2 > ('cd', 4)[5]:
                    return 1, 1, ('cd', 4)[5], ('cd', 4)[1]
                return 1, 1, Mask(255, 1, (('cd', 4)[6] * ('cd', 4)[5] / 10000) - (0 / 10^uint8(ext_call.return_data[0]))), ('cd', 4)[1]
            if not sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                revert with 0, '!noDecExpoSetting'
            if ('cd', 4)[2] > ('cd', 4)[1]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not ('cd', 4)[1] - ('cd', 4)[2]:
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 0, 0, ('cd', 4)[1]
            else:
                if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[1] - ('cd', 4)[2] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 0, 0, ('cd', 4)[1]
            if 0 / 10^uint8(ext_call.return_data[0]) <= ('cd', 4)[6] * ('cd', 4)[5] / 10000:
                return 0, 0, 0, ('cd', 4)[1]
            if ('cd', 4)[6] * ('cd', 4)[5] / 10000 > 0 / 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2:
                if not 10^('cd', 4)[8]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / 10^('cd', 4)[8]:
                    if not ('cd', 4)[1]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                        return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                    return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
                if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / 0 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1], ('cd', 4)[1]
            if 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 != 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^('cd', 4)[8]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8]:
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
            if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 
                   0,
                   10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1],
                   ('cd', 4)[1]
        if 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 0 / 10^('cd', 4)[7] != 10^('cd', 4)[8]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not ('cd', 4)[5]:
            if ('cd', 4)[1] <= ('cd', 4)[2]:
                if not sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    revert with 0, '!noIncExpoSetting'
                if ('cd', 4)[1] > ('cd', 4)[2]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not ('cd', 4)[2] - ('cd', 4)[1]:
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 1, 0, ('cd', 4)[1]
                else:
                    if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] - ('cd', 4)[1] != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 1, 0, ('cd', 4)[1]
                if 0 <= 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]):
                    return 0, 1, 0, ('cd', 4)[1]
                if 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 > ('cd', 4)[5]:
                    return 1, 1, ('cd', 4)[5], ('cd', 4)[1]
                return 1, 1, Mask(255, 1, -10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])), ('cd', 4)[1]
            if not sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                revert with 0, '!noDecExpoSetting'
            if ('cd', 4)[2] > ('cd', 4)[1]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not ('cd', 4)[1] - ('cd', 4)[2]:
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 0, 0, ('cd', 4)[1]
            else:
                if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[1] - ('cd', 4)[2] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 0, 0, ('cd', 4)[1]
            if 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) <= 0:
                return 0, 0, 0, ('cd', 4)[1]
            if 0 > 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2:
                if not 10^('cd', 4)[8]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / 10^('cd', 4)[8]:
                    if not ('cd', 4)[1]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                        return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                    return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
                if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / 0 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1], ('cd', 4)[1]
            if 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 != 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^('cd', 4)[8]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8]:
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
            if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 
                   0,
                   10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1],
                   ('cd', 4)[1]
        if ('cd', 4)[6] * ('cd', 4)[5] / ('cd', 4)[5] != ('cd', 4)[6]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ('cd', 4)[1] <= ('cd', 4)[2]:
            if not sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                revert with 0, '!noIncExpoSetting'
            if ('cd', 4)[1] > ('cd', 4)[2]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not ('cd', 4)[2] - ('cd', 4)[1]:
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 1, 0, ('cd', 4)[1]
            else:
                if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] - ('cd', 4)[1] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 1, 0, ('cd', 4)[1]
            if ('cd', 4)[6] * ('cd', 4)[5] / 10000 <= 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]):
                return 0, 1, 0, ('cd', 4)[1]
            if 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) > ('cd', 4)[6] * ('cd', 4)[5] / 10000:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (('cd', 4)[6] * ('cd', 4)[5] / 10000) - (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) / 2 > ('cd', 4)[5]:
                return 1, 1, ('cd', 4)[5], ('cd', 4)[1]
            return 1, 
                   1,
                   Mask(255, 1, (('cd', 4)[6] * ('cd', 4)[5] / 10000) - (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]))),
                   ('cd', 4)[1]
        if not sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
            revert with 0, '!noDecExpoSetting'
        if ('cd', 4)[2] > ('cd', 4)[1]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not ('cd', 4)[1] - ('cd', 4)[2]:
            if not ('cd', 4)[2]:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                return 0, 0, 0, ('cd', 4)[1]
        else:
            if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[1] - ('cd', 4)[2] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[2]:
                revert with 0, 'SafeMath: division by zero', 0
            if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                return 0, 0, 0, ('cd', 4)[1]
        if 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) <= ('cd', 4)[6] * ('cd', 4)[5] / 10000:
            return 0, 0, 0, ('cd', 4)[1]
        if ('cd', 4)[6] * ('cd', 4)[5] / 10000 > 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2:
            if not 10^('cd', 4)[8]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / 10^('cd', 4)[8]:
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
            if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / 0 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 0, 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1], ('cd', 4)[1]
        if 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 != 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^('cd', 4)[8]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8]:
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
        if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ('cd', 4)[1]:
            revert with 0, 'SafeMath: division by zero', 0
        if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
            return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
        return 1, 
               0,
               10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1],
               ('cd', 4)[1]
    if ('cd', 4)[6] * ('cd', 4)[4] / ('cd', 4)[4] != ('cd', 4)[6]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ('cd', 4)[6] * ('cd', 4)[4] / 10000:
        if not 10^('cd', 4)[7]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / 10^('cd', 4)[7]:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not ('cd', 4)[5]:
                if ('cd', 4)[1] <= ('cd', 4)[2]:
                    if not sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        revert with 0, '!noIncExpoSetting'
                    if ('cd', 4)[1] > ('cd', 4)[2]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not ('cd', 4)[2] - ('cd', 4)[1]:
                        if not ('cd', 4)[2]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if 0 / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                            return 0, 1, 0, ('cd', 4)[1]
                    else:
                        if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] - ('cd', 4)[1] != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ('cd', 4)[2]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                            return 0, 1, 0, ('cd', 4)[1]
                    if 0 <= 0 / 10^uint8(ext_call.return_data[0]):
                        return 0, 1, 0, ('cd', 4)[1]
                    if 0 / 10^uint8(ext_call.return_data[0]) > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -0 / 10^uint8(ext_call.return_data[0]) / 2 > ('cd', 4)[5]:
                        return 1, 1, ('cd', 4)[5], ('cd', 4)[1]
                    return 1, 1, Mask(255, 1, -0 / 10^uint8(ext_call.return_data[0])), ('cd', 4)[1]
                if not sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    revert with 0, '!noDecExpoSetting'
                if ('cd', 4)[2] > ('cd', 4)[1]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not ('cd', 4)[1] - ('cd', 4)[2]:
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 0, 0, ('cd', 4)[1]
                else:
                    if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[1] - ('cd', 4)[2] != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 0, 0, ('cd', 4)[1]
                if 0 / 10^uint8(ext_call.return_data[0]) <= 0:
                    return 0, 0, 0, ('cd', 4)[1]
                if 0 > 0 / 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not 0 / 10^uint8(ext_call.return_data[0]) / 2:
                    if not 10^('cd', 4)[8]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / 10^('cd', 4)[8]:
                        if not ('cd', 4)[1]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                            return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                        return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
                    if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / 0 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ('cd', 4)[1]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                        return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                    return 1, 0, 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1], ('cd', 4)[1]
                if 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 0 / 10^uint8(ext_call.return_data[0]) / 2 != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10^('cd', 4)[8]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8]:
                    if not ('cd', 4)[1]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                        return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                    return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
                if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 
                       0,
                       10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1],
                       ('cd', 4)[1]
            if ('cd', 4)[6] * ('cd', 4)[5] / ('cd', 4)[5] != ('cd', 4)[6]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ('cd', 4)[1] <= ('cd', 4)[2]:
                if not sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    revert with 0, '!noIncExpoSetting'
                if ('cd', 4)[1] > ('cd', 4)[2]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not ('cd', 4)[2] - ('cd', 4)[1]:
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 1, 0, ('cd', 4)[1]
                else:
                    if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] - ('cd', 4)[1] != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 1, 0, ('cd', 4)[1]
                if ('cd', 4)[6] * ('cd', 4)[5] / 10000 <= 0 / 10^uint8(ext_call.return_data[0]):
                    return 0, 1, 0, ('cd', 4)[1]
                if 0 / 10^uint8(ext_call.return_data[0]) > ('cd', 4)[6] * ('cd', 4)[5] / 10000:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (('cd', 4)[6] * ('cd', 4)[5] / 10000) - (0 / 10^uint8(ext_call.return_data[0])) / 2 > ('cd', 4)[5]:
                    return 1, 1, ('cd', 4)[5], ('cd', 4)[1]
                return 1, 1, Mask(255, 1, (('cd', 4)[6] * ('cd', 4)[5] / 10000) - (0 / 10^uint8(ext_call.return_data[0]))), ('cd', 4)[1]
            if not sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                revert with 0, '!noDecExpoSetting'
            if ('cd', 4)[2] > ('cd', 4)[1]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not ('cd', 4)[1] - ('cd', 4)[2]:
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 0, 0, ('cd', 4)[1]
            else:
                if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[1] - ('cd', 4)[2] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 0, 0, ('cd', 4)[1]
            if 0 / 10^uint8(ext_call.return_data[0]) <= ('cd', 4)[6] * ('cd', 4)[5] / 10000:
                return 0, 0, 0, ('cd', 4)[1]
            if ('cd', 4)[6] * ('cd', 4)[5] / 10000 > 0 / 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2:
                if not 10^('cd', 4)[8]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / 10^('cd', 4)[8]:
                    if not ('cd', 4)[1]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                        return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                    return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
                if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / 0 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1], ('cd', 4)[1]
            if 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 != 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^('cd', 4)[8]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8]:
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
            if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 
                   0,
                   10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1],
                   ('cd', 4)[1]
        if 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 0 / 10^('cd', 4)[7] != 10^('cd', 4)[8]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not ('cd', 4)[5]:
            if ('cd', 4)[1] <= ('cd', 4)[2]:
                if not sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    revert with 0, '!noIncExpoSetting'
                if ('cd', 4)[1] > ('cd', 4)[2]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not ('cd', 4)[2] - ('cd', 4)[1]:
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 1, 0, ('cd', 4)[1]
                else:
                    if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] - ('cd', 4)[1] != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 1, 0, ('cd', 4)[1]
                if 0 <= 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]):
                    return 0, 1, 0, ('cd', 4)[1]
                if 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 > ('cd', 4)[5]:
                    return 1, 1, ('cd', 4)[5], ('cd', 4)[1]
                return 1, 1, Mask(255, 1, -10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])), ('cd', 4)[1]
            if not sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                revert with 0, '!noDecExpoSetting'
            if ('cd', 4)[2] > ('cd', 4)[1]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not ('cd', 4)[1] - ('cd', 4)[2]:
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 0, 0, ('cd', 4)[1]
            else:
                if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[1] - ('cd', 4)[2] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 0, 0, ('cd', 4)[1]
            if 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) <= 0:
                return 0, 0, 0, ('cd', 4)[1]
            if 0 > 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2:
                if not 10^('cd', 4)[8]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / 10^('cd', 4)[8]:
                    if not ('cd', 4)[1]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                        return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                    return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
                if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / 0 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1], ('cd', 4)[1]
            if 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 != 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^('cd', 4)[8]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8]:
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
            if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 
                   0,
                   10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1],
                   ('cd', 4)[1]
        if ('cd', 4)[6] * ('cd', 4)[5] / ('cd', 4)[5] != ('cd', 4)[6]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ('cd', 4)[1] <= ('cd', 4)[2]:
            if not sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                revert with 0, '!noIncExpoSetting'
            if ('cd', 4)[1] > ('cd', 4)[2]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not ('cd', 4)[2] - ('cd', 4)[1]:
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 1, 0, ('cd', 4)[1]
            else:
                if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] - ('cd', 4)[1] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 1, 0, ('cd', 4)[1]
            if ('cd', 4)[6] * ('cd', 4)[5] / 10000 <= 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]):
                return 0, 1, 0, ('cd', 4)[1]
            if 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) > ('cd', 4)[6] * ('cd', 4)[5] / 10000:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (('cd', 4)[6] * ('cd', 4)[5] / 10000) - (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) / 2 > ('cd', 4)[5]:
                return 1, 1, ('cd', 4)[5], ('cd', 4)[1]
            return 1, 
                   1,
                   Mask(255, 1, (('cd', 4)[6] * ('cd', 4)[5] / 10000) - (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]))),
                   ('cd', 4)[1]
        if not sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
            revert with 0, '!noDecExpoSetting'
        if ('cd', 4)[2] > ('cd', 4)[1]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not ('cd', 4)[1] - ('cd', 4)[2]:
            if not ('cd', 4)[2]:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                return 0, 0, 0, ('cd', 4)[1]
        else:
            if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[1] - ('cd', 4)[2] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[2]:
                revert with 0, 'SafeMath: division by zero', 0
            if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                return 0, 0, 0, ('cd', 4)[1]
        if 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) <= ('cd', 4)[6] * ('cd', 4)[5] / 10000:
            return 0, 0, 0, ('cd', 4)[1]
        if ('cd', 4)[6] * ('cd', 4)[5] / 10000 > 10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2:
            if not 10^('cd', 4)[8]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / 10^('cd', 4)[8]:
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
            if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / 0 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 0, 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1], ('cd', 4)[1]
        if 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 != 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^('cd', 4)[8]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8]:
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
        if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ('cd', 4)[1]:
            revert with 0, 'SafeMath: division by zero', 0
        if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
            return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
        return 1, 
               0,
               10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * 0 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1],
               ('cd', 4)[1]
    if ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / ('cd', 4)[6] * ('cd', 4)[4] / 10000 != ('cd', 4)[1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^('cd', 4)[7]:
        revert with 0, 'SafeMath: division by zero', 0
    if not ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7]:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not ('cd', 4)[5]:
            if ('cd', 4)[1] <= ('cd', 4)[2]:
                if not sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    revert with 0, '!noIncExpoSetting'
                if ('cd', 4)[1] > ('cd', 4)[2]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not ('cd', 4)[2] - ('cd', 4)[1]:
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 1, 0, ('cd', 4)[1]
                else:
                    if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] - ('cd', 4)[1] != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not ('cd', 4)[2]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                        return 0, 1, 0, ('cd', 4)[1]
                if 0 <= 0 / 10^uint8(ext_call.return_data[0]):
                    return 0, 1, 0, ('cd', 4)[1]
                if 0 / 10^uint8(ext_call.return_data[0]) > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -0 / 10^uint8(ext_call.return_data[0]) / 2 > ('cd', 4)[5]:
                    return 1, 1, ('cd', 4)[5], ('cd', 4)[1]
                return 1, 1, Mask(255, 1, -0 / 10^uint8(ext_call.return_data[0])), ('cd', 4)[1]
            if not sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                revert with 0, '!noDecExpoSetting'
            if ('cd', 4)[2] > ('cd', 4)[1]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not ('cd', 4)[1] - ('cd', 4)[2]:
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 0, 0, ('cd', 4)[1]
            else:
                if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[1] - ('cd', 4)[2] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 0, 0, ('cd', 4)[1]
            if 0 / 10^uint8(ext_call.return_data[0]) <= 0:
                return 0, 0, 0, ('cd', 4)[1]
            if 0 > 0 / 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not 0 / 10^uint8(ext_call.return_data[0]) / 2:
                if not 10^('cd', 4)[8]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / 10^('cd', 4)[8]:
                    if not ('cd', 4)[1]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                        return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                    return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
                if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / 0 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1], ('cd', 4)[1]
            if 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 0 / 10^uint8(ext_call.return_data[0]) / 2 != 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^('cd', 4)[8]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8]:
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
            if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 
                   0,
                   10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 0 / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1],
                   ('cd', 4)[1]
        if ('cd', 4)[6] * ('cd', 4)[5] / ('cd', 4)[5] != ('cd', 4)[6]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ('cd', 4)[1] <= ('cd', 4)[2]:
            if not sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                revert with 0, '!noIncExpoSetting'
            if ('cd', 4)[1] > ('cd', 4)[2]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not ('cd', 4)[2] - ('cd', 4)[1]:
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 1, 0, ('cd', 4)[1]
            else:
                if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] - ('cd', 4)[1] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 1, 0, ('cd', 4)[1]
            if ('cd', 4)[6] * ('cd', 4)[5] / 10000 <= 0 / 10^uint8(ext_call.return_data[0]):
                return 0, 1, 0, ('cd', 4)[1]
            if 0 / 10^uint8(ext_call.return_data[0]) > ('cd', 4)[6] * ('cd', 4)[5] / 10000:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (('cd', 4)[6] * ('cd', 4)[5] / 10000) - (0 / 10^uint8(ext_call.return_data[0])) / 2 > ('cd', 4)[5]:
                return 1, 1, ('cd', 4)[5], ('cd', 4)[1]
            return 1, 1, Mask(255, 1, (('cd', 4)[6] * ('cd', 4)[5] / 10000) - (0 / 10^uint8(ext_call.return_data[0]))), ('cd', 4)[1]
        if not sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
            revert with 0, '!noDecExpoSetting'
        if ('cd', 4)[2] > ('cd', 4)[1]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not ('cd', 4)[1] - ('cd', 4)[2]:
            if not ('cd', 4)[2]:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                return 0, 0, 0, ('cd', 4)[1]
        else:
            if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[1] - ('cd', 4)[2] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[2]:
                revert with 0, 'SafeMath: division by zero', 0
            if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                return 0, 0, 0, ('cd', 4)[1]
        if 0 / 10^uint8(ext_call.return_data[0]) <= ('cd', 4)[6] * ('cd', 4)[5] / 10000:
            return 0, 0, 0, ('cd', 4)[1]
        if ('cd', 4)[6] * ('cd', 4)[5] / 10000 > 0 / 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2:
            if not 10^('cd', 4)[8]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / 10^('cd', 4)[8]:
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
            if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / 0 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 0, 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1], ('cd', 4)[1]
        if 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 != 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^('cd', 4)[8]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8]:
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
        if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ('cd', 4)[1]:
            revert with 0, 'SafeMath: division by zero', 0
        if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
            return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
        return 1, 
               0,
               10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (0 / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1],
               ('cd', 4)[1]
    if 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] != 10^('cd', 4)[8]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero', 0
    if not ('cd', 4)[5]:
        if ('cd', 4)[1] <= ('cd', 4)[2]:
            if not sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                revert with 0, '!noIncExpoSetting'
            if ('cd', 4)[1] > ('cd', 4)[2]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not ('cd', 4)[2] - ('cd', 4)[1]:
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 1, 0, ('cd', 4)[1]
            else:
                if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] - ('cd', 4)[1] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ('cd', 4)[2]:
                    revert with 0, 'SafeMath: division by zero', 0
                if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                    return 0, 1, 0, ('cd', 4)[1]
            if 0 <= 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]):
                return 0, 1, 0, ('cd', 4)[1]
            if 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 > ('cd', 4)[5]:
                return 1, 1, ('cd', 4)[5], ('cd', 4)[1]
            return 1, 
                   1,
                   Mask(255, 1, -10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])),
                   ('cd', 4)[1]
        if not sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
            revert with 0, '!noDecExpoSetting'
        if ('cd', 4)[2] > ('cd', 4)[1]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not ('cd', 4)[1] - ('cd', 4)[2]:
            if not ('cd', 4)[2]:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                return 0, 0, 0, ('cd', 4)[1]
        else:
            if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[1] - ('cd', 4)[2] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[2]:
                revert with 0, 'SafeMath: division by zero', 0
            if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
                return 0, 0, 0, ('cd', 4)[1]
        if 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) <= 0:
            return 0, 0, 0, ('cd', 4)[1]
        if 0 > 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2:
            if not 10^('cd', 4)[8]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / 10^('cd', 4)[8]:
                if not ('cd', 4)[1]:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                    return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
                return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
            if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / 0 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 0, 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1], ('cd', 4)[1]
        if 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 != 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^('cd', 4)[8]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8]:
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
        if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ('cd', 4)[1]:
            revert with 0, 'SafeMath: division by zero', 0
        if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
            return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
        return 1, 
               0,
               10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1],
               ('cd', 4)[1]
    if ('cd', 4)[6] * ('cd', 4)[5] / ('cd', 4)[5] != ('cd', 4)[6]:
        revert with 0, 'SafeMath: multiplication overflow'
    if ('cd', 4)[1] <= ('cd', 4)[2]:
        if not sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
            revert with 0, '!noIncExpoSetting'
        if ('cd', 4)[1] > ('cd', 4)[2]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not ('cd', 4)[2] - ('cd', 4)[1]:
            if not ('cd', 4)[2]:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                return 0, 1, 0, ('cd', 4)[1]
        else:
            if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] - ('cd', 4)[1] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ('cd', 4)[2]:
                revert with 0, 'SafeMath: division by zero', 0
            if (10000 * ('cd', 4)[2]) - (10000 * ('cd', 4)[1]) / ('cd', 4)[2] < sub_644cddb4[address(('cd', 4).length)][address(('cd', 4)[0])]:
                return 0, 1, 0, ('cd', 4)[1]
        if ('cd', 4)[6] * ('cd', 4)[5] / 10000 <= 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]):
            return 0, 1, 0, ('cd', 4)[1]
        if 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) > ('cd', 4)[6] * ('cd', 4)[5] / 10000:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (('cd', 4)[6] * ('cd', 4)[5] / 10000) - (10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) / 2 > ('cd', 4)[5]:
            return 1, 1, ('cd', 4)[5], ('cd', 4)[1]
        return 1, 
               1,
               Mask(255, 1, (('cd', 4)[6] * ('cd', 4)[5] / 10000) - (10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]))),
               ('cd', 4)[1]
    if not sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
        revert with 0, '!noDecExpoSetting'
    if ('cd', 4)[2] > ('cd', 4)[1]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not ('cd', 4)[1] - ('cd', 4)[2]:
        if not ('cd', 4)[2]:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
            return 0, 0, 0, ('cd', 4)[1]
    else:
        if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[1] - ('cd', 4)[2] != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ('cd', 4)[2]:
            revert with 0, 'SafeMath: division by zero', 0
        if (10000 * ('cd', 4)[1]) - (10000 * ('cd', 4)[2]) / ('cd', 4)[2] < sub_68ded33c[address(('cd', 4).length)][address(('cd', 4)[0])]:
            return 0, 0, 0, ('cd', 4)[1]
    if 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]) <= ('cd', 4)[6] * ('cd', 4)[5] / 10000:
        return 0, 0, 0, ('cd', 4)[1]
    if ('cd', 4)[6] * ('cd', 4)[5] / 10000 > 10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not (10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2:
        if not 10^('cd', 4)[8]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / 10^('cd', 4)[8]:
            if not ('cd', 4)[1]:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
                return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
            return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
        if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / 0 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ('cd', 4)[1]:
            revert with 0, 'SafeMath: division by zero', 0
        if 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
            return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
        return 1, 0, 10^('cd', 4)[7] * 0 / 10^('cd', 4)[8] / ('cd', 4)[1], ('cd', 4)[1]
    if 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / (10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 != 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^('cd', 4)[8]:
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8]:
        if not ('cd', 4)[1]:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / ('cd', 4)[1] > ('cd', 4)[4]:
            return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
        return 1, 0, 0 / ('cd', 4)[1], ('cd', 4)[1]
    if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] != 10^('cd', 4)[7]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ('cd', 4)[1]:
        revert with 0, 'SafeMath: division by zero', 0
    if 10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1] > ('cd', 4)[4]:
        return 1, 0, ('cd', 4)[4], ('cd', 4)[1]
    return 1, 
           0,
           10^('cd', 4)[7] * 10^uint8(ext_call.return_data[0]) * (10^('cd', 4)[8] * ('cd', 4)[1] * ('cd', 4)[6] * ('cd', 4)[4] / 10000 / 10^('cd', 4)[7] / 10^uint8(ext_call.return_data[0])) - (('cd', 4)[6] * ('cd', 4)[5] / 10000) / 2 / 10^('cd', 4)[8] / ('cd', 4)[1],
           ('cd', 4)[1]
}



}
