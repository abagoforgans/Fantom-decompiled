contract main {




// =====================  Runtime code  =====================


#
#  - getStakingScore(address arg1)
#
mapping of struct stakerInfo;
address stor1;
array of address pools;
mapping of uint256 sub_a9b3f8b7;
uint256 multiplierFactor;

function multiplierFactor() payable {
    return multiplierFactor
}

function stakerInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakerInfo[arg1].field_0, stakerInfo[arg1].field_256, stakerInfo[arg1].field_512, stakerInfo[arg1].field_768
}

function sub_a9b3f8b7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a9b3f8b7[arg1]
}

function pools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < pools.length
    return pools[arg1]
}

function _fallback() payable {
    revert
}

function amIAdmin() payable {
    return (msg.sender == stor1)
}

function replaceAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBWithdraw: only admin can do this'
    stor1 = arg1
}

function setPoolMultiplier(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBWithdraw: only admin can do this'
    sub_a9b3f8b7[address(arg1)] = arg2
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBWithdraw: only admin can do this'
    pools.length++
    pools[pools.length] = arg1
    if multiplierFactor > -1:
        revert with 'NH{q', 17
    sub_a9b3f8b7[address(arg1)] = multiplierFactor
}

function removePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBWithdraw: only admin can do this'
    if arg1 < pools.length:
        if pools.length < 1:
            revert with 'NH{q', 17
        if pools.length - 1 >= pools.length:
            revert with 'NH{q', 50
        if arg1 >= pools.length:
            revert with 'NH{q', 50
        pools[arg1] = pools[pools.length]
        if not pools.length:
            revert with 'NH{q', 49
        pools[pools.length] = 0
        pools.length--
}

function sub_aaf7a795(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(arg1) != 0x6138ac831ddc8a19abbb8518e7a70c79e033ddbb:
        if address(arg1) != 0x80c1f1404de4362f6da32af2df0e97d52838ac93:
            if address(arg1) != 0xa0b25c31ac966558926835cc98c8950907d31ac2:
                if address(arg1) != 0x867e669463fcdc65a5d0065cb746d02d8f50b104:
                    return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x47c255f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xb7f06c81 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    staticcall address(arg1).totalTokensStaked() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).RATE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).lastTime() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((8 * ceil32(return_data.size)) + 224 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((10 * ceil32(return_data.size)) + 352 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if ext_call.return_data[0] < ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[64] and ext_call.return_data[0] - ext_call.return_data[32] > -1 / ext_call.return_data[64]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((11 * ceil32(return_data.size)) + 480 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if ext_call.return_data[0] > -((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - 1:
            revert with 'NH{q', 17
        return (ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18))
    if not ext_call.return_data[0]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((8 * ceil32(return_data.size)) + 224 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((10 * ceil32(return_data.size)) + 352 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if ext_call.return_data[0] < ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[64] and ext_call.return_data[0] - ext_call.return_data[32] > -1 / ext_call.return_data[64]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((11 * ceil32(return_data.size)) + 480 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if ext_call.return_data[0] > -((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - 1:
            revert with 'NH{q', 17
        return (ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18))
    if block.timestamp < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[0] and block.timestamp - ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] > -((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).getInfo(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((8 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getInfo(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((10 * ceil32(return_data.size)) + 352 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if ext_call.return_data[0] + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) < ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[64] and ext_call.return_data[0] + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[32] > -1 / ext_call.return_data[64]:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).getInfo(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((11 * ceil32(return_data.size)) + 480 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if ext_call.return_data[0] > -((ext_call.return_data[0] * ext_call.return_data[64]) + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18))
}

function sub_210010c8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(arg1) != 0x6138ac831ddc8a19abbb8518e7a70c79e033ddbb:
        if address(arg1) != 0x80c1f1404de4362f6da32af2df0e97d52838ac93:
            if address(arg1) != 0xa0b25c31ac966558926835cc98c8950907d31ac2:
                if address(arg1) != 0x867e669463fcdc65a5d0065cb746d02d8f50b104:
                    return 0
        if address(arg1) != 0x6138ac831ddc8a19abbb8518e7a70c79e033ddbb:
            if address(arg1) != 0x80c1f1404de4362f6da32af2df0e97d52838ac93:
                if address(arg1) != 0xa0b25c31ac966558926835cc98c8950907d31ac2:
                    if address(arg1) != 0x867e669463fcdc65a5d0065cb746d02d8f50b104:
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).startTime() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        if not bool((2 * ceil32(return_data.size)) + 224 <= test266151307()):
                            revert with 'NH{q', 65
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        if block.timestamp < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if block.timestamp - ext_call.return_data[0] < 4320 * 24 * 3600:
                            if block.timestamp < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if False and block.timestamp - ext_call.return_data[0] > 0:
                                revert with 'NH{q', 17
                        if 0 < ext_call.return_data[96]:
                            revert with 'NH{q', 17
                        return -ext_call.return_data[96]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x47c255f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xb7f06c81 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    staticcall address(arg1).totalTokensStaked() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).RATE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).lastTime() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((8 * ceil32(return_data.size)) + 224 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((10 * ceil32(return_data.size)) + 352 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if ext_call.return_data[0] < ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[64] and ext_call.return_data[0] - ext_call.return_data[32] > -1 / ext_call.return_data[64]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((11 * ceil32(return_data.size)) + 480 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if ext_call.return_data[0] > -((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).startTime() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((13 * ceil32(return_data.size)) + 608 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[0] >= 4320 * 24 * 3600:
            if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) < ext_call.return_data[96]:
                revert with 'NH{q', 17
            return (ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - ext_call.return_data[96])
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) and block.timestamp - ext_call.return_data[0] > -1 / ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18):
            revert with 'NH{q', 17
        if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) / 4320 * 24 * 3600 < ext_call.return_data[96]:
            revert with 'NH{q', 17
        return (((block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) / 4320 * 24 * 3600) - ext_call.return_data[96])
    if not ext_call.return_data[0]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((8 * ceil32(return_data.size)) + 224 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((10 * ceil32(return_data.size)) + 352 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if ext_call.return_data[0] < ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[64] and ext_call.return_data[0] - ext_call.return_data[32] > -1 / ext_call.return_data[64]:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((11 * ceil32(return_data.size)) + 480 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if ext_call.return_data[0] > -((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).startTime() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).getInfo(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not bool((13 * ceil32(return_data.size)) + 608 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[0] >= 4320 * 24 * 3600:
            if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) < ext_call.return_data[96]:
                revert with 'NH{q', 17
            return (ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - ext_call.return_data[96])
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) and block.timestamp - ext_call.return_data[0] > -1 / ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18):
            revert with 'NH{q', 17
        if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) / 4320 * 24 * 3600 < ext_call.return_data[96]:
            revert with 'NH{q', 17
        return (((block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) / 4320 * 24 * 3600) - ext_call.return_data[96])
    if block.timestamp < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[0] and block.timestamp - ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] > -((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).getInfo(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((8 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getInfo(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((10 * ceil32(return_data.size)) + 352 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if ext_call.return_data[0] + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) < ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[64] and ext_call.return_data[0] + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - ext_call.return_data[32] > -1 / ext_call.return_data[64]:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).getInfo(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((11 * ceil32(return_data.size)) + 480 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if ext_call.return_data[0] > -((ext_call.return_data[0] * ext_call.return_data[64]) + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - 1:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).startTime() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getInfo(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((13 * ceil32(return_data.size)) + 608 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if block.timestamp < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if block.timestamp - ext_call.return_data[0] >= 4320 * 24 * 3600:
        if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) < ext_call.return_data[96]:
            revert with 'NH{q', 17
        return (ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - ext_call.return_data[96])
    if block.timestamp < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) and block.timestamp - ext_call.return_data[0] > -1 / ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[64]) + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18):
        revert with 'NH{q', 17
    if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * (ext_call.return_data[0] * ext_call.return_data[64]) + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[64]) + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) / 4320 * 24 * 3600 < ext_call.return_data[96]:
        revert with 'NH{q', 17
    return (((block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * (ext_call.return_data[0] * ext_call.return_data[64]) + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[64]) + ((10^18 * block.timestamp * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[64]) - (ext_call.return_data[32] * ext_call.return_data[64]) / 10^18) / 4320 * 24 * 3600) - ext_call.return_data[96])
}

function isStaker(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < pools.length:
        mem[0] = 2
        if pools[idx] == 0x6138ac831ddc8a19abbb8518e7a70c79e033ddbb:
            require ext_code.size(pools[idx])
            staticcall pools[idx].0x47c255f with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _299 = mem[_292]
            require mem[_292] == mem[_292]
            require ext_code.size(pools[idx])
            staticcall pools[idx].0xb7f06c81 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _309 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _315 = mem[_309]
            require mem[_309] == bool(mem[_309])
            require ext_code.size(pools[idx])
            staticcall pools[idx].totalTokensStaked() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _331 = mem[_325]
            require mem[_325] == mem[_325]
            require ext_code.size(pools[idx])
            staticcall pools[idx].RATE() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _341 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _347 = mem[_341]
            require mem[_341] == mem[_341]
            require ext_code.size(pools[idx])
            staticcall pools[idx].lastTime() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _363 = mem[_357]
            require mem[_357] == mem[_357]
            if _331 <= 0:
                require ext_code.size(pools[idx])
                staticcall pools[idx].getInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _380 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _391 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 128
                require mem[_380] == mem[_380]
                mem[_391] = mem[_380]
                require mem[_380 + 32] == mem[_380 + 32]
                mem[_391 + 32] = mem[_380 + 32]
                require mem[_380 + 64] == mem[_380 + 64]
                mem[_391 + 64] = mem[_380 + 64]
                require mem[_380 + 96] == mem[_380 + 96]
                mem[_391 + 96] = mem[_380 + 96]
                _443 = mem[_391 + 32]
                require ext_code.size(pools[idx])
                staticcall pools[idx].getInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _471 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _485 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 128
                require mem[_471] == mem[_471]
                mem[_485] = mem[_471]
                require mem[_471 + 32] == mem[_471 + 32]
                mem[_485 + 32] = mem[_471 + 32]
                require mem[_471 + 64] == mem[_471 + 64]
                mem[_485 + 64] = mem[_471 + 64]
                require mem[_471 + 96] == mem[_471 + 96]
                mem[_485 + 96] = mem[_471 + 96]
                _551 = mem[_485 + 64]
                if _299 < _443:
                    revert with 'NH{q', 17
                if mem[_485 + 64] and _299 - _443 > -1 / mem[_485 + 64]:
                    revert with 'NH{q', 17
                require ext_code.size(pools[idx])
                staticcall pools[idx].getInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _591 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _603 = mem[64]
                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 128
                require mem[_591] == mem[_591]
                mem[_603] = mem[_591]
                require mem[_591 + 32] == mem[_591 + 32]
                mem[_603 + 32] = mem[_591 + 32]
                require mem[_591 + 64] == mem[_591 + 64]
                mem[_603 + 64] = mem[_591 + 64]
                require mem[_591 + 96] == mem[_591 + 96]
                mem[_603 + 96] = mem[_591 + 96]
                if mem[_603] > -((_299 * _551) - (_443 * _551) / 10^18) - 1:
                    revert with 'NH{q', 17
                if mem[_603] + ((_299 * _551) - (_443 * _551) / 10^18) > 0:
                    return 1
            else:
                if not _315:
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].getInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _384 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _393 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_384] == mem[_384]
                    mem[_393] = mem[_384]
                    require mem[_384 + 32] == mem[_384 + 32]
                    mem[_393 + 32] = mem[_384 + 32]
                    require mem[_384 + 64] == mem[_384 + 64]
                    mem[_393 + 64] = mem[_384 + 64]
                    require mem[_384 + 96] == mem[_384 + 96]
                    mem[_393 + 96] = mem[_384 + 96]
                    _449 = mem[_393 + 32]
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].getInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _476 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _488 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_476] == mem[_476]
                    mem[_488] = mem[_476]
                    require mem[_476 + 32] == mem[_476 + 32]
                    mem[_488 + 32] = mem[_476 + 32]
                    require mem[_476 + 64] == mem[_476 + 64]
                    mem[_488 + 64] = mem[_476 + 64]
                    require mem[_476 + 96] == mem[_476 + 96]
                    mem[_488 + 96] = mem[_476 + 96]
                    _555 = mem[_488 + 64]
                    if _299 < _449:
                        revert with 'NH{q', 17
                    if mem[_488 + 64] and _299 - _449 > -1 / mem[_488 + 64]:
                        revert with 'NH{q', 17
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].getInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _596 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _607 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_596] == mem[_596]
                    mem[_607] = mem[_596]
                    require mem[_596 + 32] == mem[_596 + 32]
                    mem[_607 + 32] = mem[_596 + 32]
                    require mem[_596 + 64] == mem[_596 + 64]
                    mem[_607 + 64] = mem[_596 + 64]
                    require mem[_596 + 96] == mem[_596 + 96]
                    mem[_607 + 96] = mem[_596 + 96]
                    if mem[_607] > -((_299 * _555) - (_449 * _555) / 10^18) - 1:
                        revert with 'NH{q', 17
                    if mem[_607] + ((_299 * _555) - (_449 * _555) / 10^18) > 0:
                        return 1
                else:
                    if block.timestamp < mem[_357]:
                        revert with 'NH{q', 17
                    if _347 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if 10^18 * _347 and block.timestamp - mem[_357] > -1 / 10^18 * _347:
                        revert with 'NH{q', 17
                    if not _331:
                        revert with 'NH{q', 18
                    if _299 > -((10^18 * block.timestamp * _347) - (10^18 * mem[_357] * _347) / _331) - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].getInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _435 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _445 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_435] == mem[_435]
                    mem[_445] = mem[_435]
                    require mem[_435 + 32] == mem[_435 + 32]
                    mem[_445 + 32] = mem[_435 + 32]
                    require mem[_435 + 64] == mem[_435 + 64]
                    mem[_445 + 64] = mem[_435 + 64]
                    require mem[_435 + 96] == mem[_435 + 96]
                    mem[_445 + 96] = mem[_435 + 96]
                    _519 = mem[_445 + 32]
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].getInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _552 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_543] == mem[_543]
                    mem[_552] = mem[_543]
                    require mem[_543 + 32] == mem[_543 + 32]
                    mem[_552 + 32] = mem[_543 + 32]
                    require mem[_543 + 64] == mem[_543 + 64]
                    mem[_552 + 64] = mem[_543 + 64]
                    require mem[_543 + 96] == mem[_543 + 96]
                    mem[_552 + 96] = mem[_543 + 96]
                    _604 = mem[_552 + 64]
                    if _299 + ((10^18 * block.timestamp * _347) - (10^18 * _363 * _347) / _331) < _519:
                        revert with 'NH{q', 17
                    if mem[_552 + 64] and _299 + ((10^18 * block.timestamp * _347) - (10^18 * _363 * _347) / _331) - _519 > -1 / mem[_552 + 64]:
                        revert with 'NH{q', 17
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].getInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _651 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _660 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_651] == mem[_651]
                    mem[_660] = mem[_651]
                    require mem[_651 + 32] == mem[_651 + 32]
                    mem[_660 + 32] = mem[_651 + 32]
                    require mem[_651 + 64] == mem[_651 + 64]
                    mem[_660 + 64] = mem[_651 + 64]
                    require mem[_651 + 96] == mem[_651 + 96]
                    mem[_660 + 96] = mem[_651 + 96]
                    if mem[_660] > -((_299 * _604) + ((10^18 * block.timestamp * _347) - (10^18 * _363 * _347) / _331 * _604) - (_519 * _604) / 10^18) - 1:
                        revert with 'NH{q', 17
                    if mem[_660] + ((_299 * _604) + ((10^18 * block.timestamp * _347) - (10^18 * _363 * _347) / _331 * _604) - (_519 * _604) / 10^18) > 0:
                        return 1
        else:
            if pools[idx] == 0x80c1f1404de4362f6da32af2df0e97d52838ac93:
                require ext_code.size(pools[idx])
                staticcall pools[idx].0x47c255f with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _300 = mem[_295]
                require mem[_295] == mem[_295]
                require ext_code.size(pools[idx])
                staticcall pools[idx].0xb7f06c81 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _312 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _316 = mem[_312]
                require mem[_312] == bool(mem[_312])
                require ext_code.size(pools[idx])
                staticcall pools[idx].totalTokensStaked() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _328 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _332 = mem[_328]
                require mem[_328] == mem[_328]
                require ext_code.size(pools[idx])
                staticcall pools[idx].RATE() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _344 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _348 = mem[_344]
                require mem[_344] == mem[_344]
                require ext_code.size(pools[idx])
                staticcall pools[idx].lastTime() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _360 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _364 = mem[_360]
                require mem[_360] == mem[_360]
                if _332 <= 0:
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].getInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _383 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _392 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_383] == mem[_383]
                    mem[_392] = mem[_383]
                    require mem[_383 + 32] == mem[_383 + 32]
                    mem[_392 + 32] = mem[_383 + 32]
                    require mem[_383 + 64] == mem[_383 + 64]
                    mem[_392 + 64] = mem[_383 + 64]
                    require mem[_383 + 96] == mem[_383 + 96]
                    mem[_392 + 96] = mem[_383 + 96]
                    _446 = mem[_392 + 32]
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].getInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _475 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _487 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_475] == mem[_475]
                    mem[_487] = mem[_475]
                    require mem[_475 + 32] == mem[_475 + 32]
                    mem[_487 + 32] = mem[_475 + 32]
                    require mem[_475 + 64] == mem[_475 + 64]
                    mem[_487 + 64] = mem[_475 + 64]
                    require mem[_475 + 96] == mem[_475 + 96]
                    mem[_487 + 96] = mem[_475 + 96]
                    _553 = mem[_487 + 64]
                    if _300 < _446:
                        revert with 'NH{q', 17
                    if mem[_487 + 64] and _300 - _446 > -1 / mem[_487 + 64]:
                        revert with 'NH{q', 17
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].getInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _595 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _605 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_595] == mem[_595]
                    mem[_605] = mem[_595]
                    require mem[_595 + 32] == mem[_595 + 32]
                    mem[_605 + 32] = mem[_595 + 32]
                    require mem[_595 + 64] == mem[_595 + 64]
                    mem[_605 + 64] = mem[_595 + 64]
                    require mem[_595 + 96] == mem[_595 + 96]
                    mem[_605 + 96] = mem[_595 + 96]
                    if mem[_605] > -((_300 * _553) - (_446 * _553) / 10^18) - 1:
                        revert with 'NH{q', 17
                    if mem[_605] + ((_300 * _553) - (_446 * _553) / 10^18) > 0:
                        return 1
                else:
                    if not _316:
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].getInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _387 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _395 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 128
                        require mem[_387] == mem[_387]
                        mem[_395] = mem[_387]
                        require mem[_387 + 32] == mem[_387 + 32]
                        mem[_395 + 32] = mem[_387 + 32]
                        require mem[_387 + 64] == mem[_387 + 64]
                        mem[_395 + 64] = mem[_387 + 64]
                        require mem[_387 + 96] == mem[_387 + 96]
                        mem[_395 + 96] = mem[_387 + 96]
                        _454 = mem[_395 + 32]
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].getInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _479 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _491 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 128
                        require mem[_479] == mem[_479]
                        mem[_491] = mem[_479]
                        require mem[_479 + 32] == mem[_479 + 32]
                        mem[_491 + 32] = mem[_479 + 32]
                        require mem[_479 + 64] == mem[_479 + 64]
                        mem[_491 + 64] = mem[_479 + 64]
                        require mem[_479 + 96] == mem[_479 + 96]
                        mem[_491 + 96] = mem[_479 + 96]
                        _558 = mem[_491 + 64]
                        if _300 < _454:
                            revert with 'NH{q', 17
                        if mem[_491 + 64] and _300 - _454 > -1 / mem[_491 + 64]:
                            revert with 'NH{q', 17
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].getInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _599 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _610 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 128
                        require mem[_599] == mem[_599]
                        mem[_610] = mem[_599]
                        require mem[_599 + 32] == mem[_599 + 32]
                        mem[_610 + 32] = mem[_599 + 32]
                        require mem[_599 + 64] == mem[_599 + 64]
                        mem[_610 + 64] = mem[_599 + 64]
                        require mem[_599 + 96] == mem[_599 + 96]
                        mem[_610 + 96] = mem[_599 + 96]
                        if mem[_610] > -((_300 * _558) - (_454 * _558) / 10^18) - 1:
                            revert with 'NH{q', 17
                        if mem[_610] + ((_300 * _558) - (_454 * _558) / 10^18) > 0:
                            return 1
                    else:
                        if block.timestamp < mem[_360]:
                            revert with 'NH{q', 17
                        if _348 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 'NH{q', 17
                        if 10^18 * _348 and block.timestamp - mem[_360] > -1 / 10^18 * _348:
                            revert with 'NH{q', 17
                        if not _332:
                            revert with 'NH{q', 18
                        if _300 > -((10^18 * block.timestamp * _348) - (10^18 * mem[_360] * _348) / _332) - 1:
                            revert with 'NH{q', 17
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].getInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _439 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _448 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 128
                        require mem[_439] == mem[_439]
                        mem[_448] = mem[_439]
                        require mem[_439 + 32] == mem[_439 + 32]
                        mem[_448 + 32] = mem[_439 + 32]
                        require mem[_439 + 64] == mem[_439 + 64]
                        mem[_448 + 64] = mem[_439 + 64]
                        require mem[_439 + 96] == mem[_439 + 96]
                        mem[_448 + 96] = mem[_439 + 96]
                        _521 = mem[_448 + 32]
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].getInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _547 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _554 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 128
                        require mem[_547] == mem[_547]
                        mem[_554] = mem[_547]
                        require mem[_547 + 32] == mem[_547 + 32]
                        mem[_554 + 32] = mem[_547 + 32]
                        require mem[_547 + 64] == mem[_547 + 64]
                        mem[_554 + 64] = mem[_547 + 64]
                        require mem[_547 + 96] == mem[_547 + 96]
                        mem[_554 + 96] = mem[_547 + 96]
                        _606 = mem[_554 + 64]
                        if _300 + ((10^18 * block.timestamp * _348) - (10^18 * _364 * _348) / _332) < _521:
                            revert with 'NH{q', 17
                        if mem[_554 + 64] and _300 + ((10^18 * block.timestamp * _348) - (10^18 * _364 * _348) / _332) - _521 > -1 / mem[_554 + 64]:
                            revert with 'NH{q', 17
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].getInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _655 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _662 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 128
                        require mem[_655] == mem[_655]
                        mem[_662] = mem[_655]
                        require mem[_655 + 32] == mem[_655 + 32]
                        mem[_662 + 32] = mem[_655 + 32]
                        require mem[_655 + 64] == mem[_655 + 64]
                        mem[_662 + 64] = mem[_655 + 64]
                        require mem[_655 + 96] == mem[_655 + 96]
                        mem[_662 + 96] = mem[_655 + 96]
                        if mem[_662] > -((_300 * _606) + ((10^18 * block.timestamp * _348) - (10^18 * _364 * _348) / _332 * _606) - (_521 * _606) / 10^18) - 1:
                            revert with 'NH{q', 17
                        if mem[_662] + ((_300 * _606) + ((10^18 * block.timestamp * _348) - (10^18 * _364 * _348) / _332 * _606) - (_521 * _606) / 10^18) > 0:
                            return 1
            else:
                if pools[idx] == 0xa0b25c31ac966558926835cc98c8950907d31ac2:
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].0x47c255f with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _296 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _301 = mem[_296]
                    require mem[_296] == mem[_296]
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].0xb7f06c81 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _313 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _317 = mem[_313]
                    require mem[_313] == bool(mem[_313])
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].totalTokensStaked() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _329 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _333 = mem[_329]
                    require mem[_329] == mem[_329]
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].RATE() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _345 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _349 = mem[_345]
                    require mem[_345] == mem[_345]
                    require ext_code.size(pools[idx])
                    staticcall pools[idx].lastTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _361 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _365 = mem[_361]
                    require mem[_361] == mem[_361]
                    if _333 <= 0:
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].getInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _386 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _394 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 128
                        require mem[_386] == mem[_386]
                        mem[_394] = mem[_386]
                        require mem[_386 + 32] == mem[_386 + 32]
                        mem[_394 + 32] = mem[_386 + 32]
                        require mem[_386 + 64] == mem[_386 + 64]
                        mem[_394 + 64] = mem[_386 + 64]
                        require mem[_386 + 96] == mem[_386 + 96]
                        mem[_394 + 96] = mem[_386 + 96]
                        _451 = mem[_394 + 32]
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].getInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _478 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _490 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 128
                        require mem[_478] == mem[_478]
                        mem[_490] = mem[_478]
                        require mem[_478 + 32] == mem[_478 + 32]
                        mem[_490 + 32] = mem[_478 + 32]
                        require mem[_478 + 64] == mem[_478 + 64]
                        mem[_490 + 64] = mem[_478 + 64]
                        require mem[_478 + 96] == mem[_478 + 96]
                        mem[_490 + 96] = mem[_478 + 96]
                        _556 = mem[_490 + 64]
                        if _301 < _451:
                            revert with 'NH{q', 17
                        if mem[_490 + 64] and _301 - _451 > -1 / mem[_490 + 64]:
                            revert with 'NH{q', 17
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].getInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _598 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _608 = mem[64]
                        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 128
                        require mem[_598] == mem[_598]
                        mem[_608] = mem[_598]
                        require mem[_598 + 32] == mem[_598 + 32]
                        mem[_608 + 32] = mem[_598 + 32]
                        require mem[_598 + 64] == mem[_598 + 64]
                        mem[_608 + 64] = mem[_598 + 64]
                        require mem[_598 + 96] == mem[_598 + 96]
                        mem[_608 + 96] = mem[_598 + 96]
                        if mem[_608] > -((_301 * _556) - (_451 * _556) / 10^18) - 1:
                            revert with 'NH{q', 17
                        if mem[_608] + ((_301 * _556) - (_451 * _556) / 10^18) > 0:
                            return 1
                    else:
                        if not _317:
                            require ext_code.size(pools[idx])
                            staticcall pools[idx].getInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _389 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            _397 = mem[64]
                            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 128
                            require mem[_389] == mem[_389]
                            mem[_397] = mem[_389]
                            require mem[_389 + 32] == mem[_389 + 32]
                            mem[_397 + 32] = mem[_389 + 32]
                            require mem[_389 + 64] == mem[_389 + 64]
                            mem[_397 + 64] = mem[_389 + 64]
                            require mem[_389 + 96] == mem[_389 + 96]
                            mem[_397 + 96] = mem[_389 + 96]
                            _459 = mem[_397 + 32]
                            require ext_code.size(pools[idx])
                            staticcall pools[idx].getInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _481 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            _493 = mem[64]
                            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 128
                            require mem[_481] == mem[_481]
                            mem[_493] = mem[_481]
                            require mem[_481 + 32] == mem[_481 + 32]
                            mem[_493 + 32] = mem[_481 + 32]
                            require mem[_481 + 64] == mem[_481 + 64]
                            mem[_493 + 64] = mem[_481 + 64]
                            require mem[_481 + 96] == mem[_481 + 96]
                            mem[_493 + 96] = mem[_481 + 96]
                            _561 = mem[_493 + 64]
                            if _301 < _459:
                                revert with 'NH{q', 17
                            if mem[_493 + 64] and _301 - _459 > -1 / mem[_493 + 64]:
                                revert with 'NH{q', 17
                            require ext_code.size(pools[idx])
                            staticcall pools[idx].getInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _601 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            _613 = mem[64]
                            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 128
                            require mem[_601] == mem[_601]
                            mem[_613] = mem[_601]
                            require mem[_601 + 32] == mem[_601 + 32]
                            mem[_613 + 32] = mem[_601 + 32]
                            require mem[_601 + 64] == mem[_601 + 64]
                            mem[_613 + 64] = mem[_601 + 64]
                            require mem[_601 + 96] == mem[_601 + 96]
                            mem[_613 + 96] = mem[_601 + 96]
                            if mem[_613] > -((_301 * _561) - (_459 * _561) / 10^18) - 1:
                                revert with 'NH{q', 17
                            if mem[_613] + ((_301 * _561) - (_459 * _561) / 10^18) > 0:
                                return 1
                        else:
                            if block.timestamp < mem[_361]:
                                revert with 'NH{q', 17
                            if _349 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if 10^18 * _349 and block.timestamp - mem[_361] > -1 / 10^18 * _349:
                                revert with 'NH{q', 17
                            if not _333:
                                revert with 'NH{q', 18
                            if _301 > -((10^18 * block.timestamp * _349) - (10^18 * mem[_361] * _349) / _333) - 1:
                                revert with 'NH{q', 17
                            require ext_code.size(pools[idx])
                            staticcall pools[idx].getInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _441 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            _453 = mem[64]
                            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 128
                            require mem[_441] == mem[_441]
                            mem[_453] = mem[_441]
                            require mem[_441 + 32] == mem[_441 + 32]
                            mem[_453 + 32] = mem[_441 + 32]
                            require mem[_441 + 64] == mem[_441 + 64]
                            mem[_453 + 64] = mem[_441 + 64]
                            require mem[_441 + 96] == mem[_441 + 96]
                            mem[_453 + 96] = mem[_441 + 96]
                            _524 = mem[_453 + 32]
                            require ext_code.size(pools[idx])
                            staticcall pools[idx].getInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _549 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            _557 = mem[64]
                            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 128
                            require mem[_549] == mem[_549]
                            mem[_557] = mem[_549]
                            require mem[_549 + 32] == mem[_549 + 32]
                            mem[_557 + 32] = mem[_549 + 32]
                            require mem[_549 + 64] == mem[_549 + 64]
                            mem[_557 + 64] = mem[_549 + 64]
                            require mem[_549 + 96] == mem[_549 + 96]
                            mem[_557 + 96] = mem[_549 + 96]
                            _609 = mem[_557 + 64]
                            if _301 + ((10^18 * block.timestamp * _349) - (10^18 * _365 * _349) / _333) < _524:
                                revert with 'NH{q', 17
                            if mem[_557 + 64] and _301 + ((10^18 * block.timestamp * _349) - (10^18 * _365 * _349) / _333) - _524 > -1 / mem[_557 + 64]:
                                revert with 'NH{q', 17
                            require ext_code.size(pools[idx])
                            staticcall pools[idx].getInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _657 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            _665 = mem[64]
                            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 128
                            require mem[_657] == mem[_657]
                            mem[_665] = mem[_657]
                            require mem[_657 + 32] == mem[_657 + 32]
                            mem[_665 + 32] = mem[_657 + 32]
                            require mem[_657 + 64] == mem[_657 + 64]
                            mem[_665 + 64] = mem[_657 + 64]
                            require mem[_657 + 96] == mem[_657 + 96]
                            mem[_665 + 96] = mem[_657 + 96]
                            if mem[_665] > -((_301 * _609) + ((10^18 * block.timestamp * _349) - (10^18 * _365 * _349) / _333 * _609) - (_524 * _609) / 10^18) - 1:
                                revert with 'NH{q', 17
                            if mem[_665] + ((_301 * _609) + ((10^18 * block.timestamp * _349) - (10^18 * _365 * _349) / _333 * _609) - (_524 * _609) / 10^18) > 0:
                                return 1
                else:
                    if pools[idx] == 0x867e669463fcdc65a5d0065cb746d02d8f50b104:
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].0x47c255f with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _302 = mem[_298]
                        require mem[_298] == mem[_298]
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].0xb7f06c81 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _314 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _318 = mem[_314]
                        require mem[_314] == bool(mem[_314])
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].totalTokensStaked() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _334 = mem[_330]
                        require mem[_330] == mem[_330]
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].RATE() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _346 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _350 = mem[_346]
                        require mem[_346] == mem[_346]
                        require ext_code.size(pools[idx])
                        staticcall pools[idx].lastTime() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _362 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _366 = mem[_362]
                        require mem[_362] == mem[_362]
                        if _334 <= 0:
                            require ext_code.size(pools[idx])
                            staticcall pools[idx].getInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _388 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            _396 = mem[64]
                            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 128
                            require mem[_388] == mem[_388]
                            mem[_396] = mem[_388]
                            require mem[_388 + 32] == mem[_388 + 32]
                            mem[_396 + 32] = mem[_388 + 32]
                            require mem[_388 + 64] == mem[_388 + 64]
                            mem[_396 + 64] = mem[_388 + 64]
                            require mem[_388 + 96] == mem[_388 + 96]
                            mem[_396 + 96] = mem[_388 + 96]
                            _456 = mem[_396 + 32]
                            require ext_code.size(pools[idx])
                            staticcall pools[idx].getInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _480 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            _492 = mem[64]
                            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 128
                            require mem[_480] == mem[_480]
                            mem[_492] = mem[_480]
                            require mem[_480 + 32] == mem[_480 + 32]
                            mem[_492 + 32] = mem[_480 + 32]
                            require mem[_480 + 64] == mem[_480 + 64]
                            mem[_492 + 64] = mem[_480 + 64]
                            require mem[_480 + 96] == mem[_480 + 96]
                            mem[_492 + 96] = mem[_480 + 96]
                            _559 = mem[_492 + 64]
                            if _302 < _456:
                                revert with 'NH{q', 17
                            if mem[_492 + 64] and _302 - _456 > -1 / mem[_492 + 64]:
                                revert with 'NH{q', 17
                            require ext_code.size(pools[idx])
                            staticcall pools[idx].getInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            _611 = mem[64]
                            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 128
                            require mem[_600] == mem[_600]
                            mem[_611] = mem[_600]
                            require mem[_600 + 32] == mem[_600 + 32]
                            mem[_611 + 32] = mem[_600 + 32]
                            require mem[_600 + 64] == mem[_600 + 64]
                            mem[_611 + 64] = mem[_600 + 64]
                            require mem[_600 + 96] == mem[_600 + 96]
                            mem[_611 + 96] = mem[_600 + 96]
                            if mem[_611] > -((_302 * _559) - (_456 * _559) / 10^18) - 1:
                                revert with 'NH{q', 17
                            if mem[_611] + ((_302 * _559) - (_456 * _559) / 10^18) > 0:
                                return 1
                        else:
                            if not _318:
                                require ext_code.size(pools[idx])
                                staticcall pools[idx].getInfo(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _390 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _398 = mem[64]
                                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 128
                                require mem[_390] == mem[_390]
                                mem[_398] = mem[_390]
                                require mem[_390 + 32] == mem[_390 + 32]
                                mem[_398 + 32] = mem[_390 + 32]
                                require mem[_390 + 64] == mem[_390 + 64]
                                mem[_398 + 64] = mem[_390 + 64]
                                require mem[_390 + 96] == mem[_390 + 96]
                                mem[_398 + 96] = mem[_390 + 96]
                                _461 = mem[_398 + 32]
                                require ext_code.size(pools[idx])
                                staticcall pools[idx].getInfo(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _482 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _494 = mem[64]
                                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 128
                                require mem[_482] == mem[_482]
                                mem[_494] = mem[_482]
                                require mem[_482 + 32] == mem[_482 + 32]
                                mem[_494 + 32] = mem[_482 + 32]
                                require mem[_482 + 64] == mem[_482 + 64]
                                mem[_494 + 64] = mem[_482 + 64]
                                require mem[_482 + 96] == mem[_482 + 96]
                                mem[_494 + 96] = mem[_482 + 96]
                                _562 = mem[_494 + 64]
                                if _302 < _461:
                                    revert with 'NH{q', 17
                                if mem[_494 + 64] and _302 - _461 > -1 / mem[_494 + 64]:
                                    revert with 'NH{q', 17
                                require ext_code.size(pools[idx])
                                staticcall pools[idx].getInfo(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _602 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _614 = mem[64]
                                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 128
                                require mem[_602] == mem[_602]
                                mem[_614] = mem[_602]
                                require mem[_602 + 32] == mem[_602 + 32]
                                mem[_614 + 32] = mem[_602 + 32]
                                require mem[_602 + 64] == mem[_602 + 64]
                                mem[_614 + 64] = mem[_602 + 64]
                                require mem[_602 + 96] == mem[_602 + 96]
                                mem[_614 + 96] = mem[_602 + 96]
                                if mem[_614] > -((_302 * _562) - (_461 * _562) / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if mem[_614] + ((_302 * _562) - (_461 * _562) / 10^18) > 0:
                                    return 1
                            else:
                                if block.timestamp < mem[_362]:
                                    revert with 'NH{q', 17
                                if _350 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if 10^18 * _350 and block.timestamp - mem[_362] > -1 / 10^18 * _350:
                                    revert with 'NH{q', 17
                                if not _334:
                                    revert with 'NH{q', 18
                                if _302 > -((10^18 * block.timestamp * _350) - (10^18 * mem[_362] * _350) / _334) - 1:
                                    revert with 'NH{q', 17
                                require ext_code.size(pools[idx])
                                staticcall pools[idx].getInfo(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _442 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _458 = mem[64]
                                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 128
                                require mem[_442] == mem[_442]
                                mem[_458] = mem[_442]
                                require mem[_442 + 32] == mem[_442 + 32]
                                mem[_458 + 32] = mem[_442 + 32]
                                require mem[_442 + 64] == mem[_442 + 64]
                                mem[_458 + 64] = mem[_442 + 64]
                                require mem[_442 + 96] == mem[_442 + 96]
                                mem[_458 + 96] = mem[_442 + 96]
                                _528 = mem[_458 + 32]
                                require ext_code.size(pools[idx])
                                staticcall pools[idx].getInfo(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _550 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _560 = mem[64]
                                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 128
                                require mem[_550] == mem[_550]
                                mem[_560] = mem[_550]
                                require mem[_550 + 32] == mem[_550 + 32]
                                mem[_560 + 32] = mem[_550 + 32]
                                require mem[_550 + 64] == mem[_550 + 64]
                                mem[_560 + 64] = mem[_550 + 64]
                                require mem[_550 + 96] == mem[_550 + 96]
                                mem[_560 + 96] = mem[_550 + 96]
                                _612 = mem[_560 + 64]
                                if _302 + ((10^18 * block.timestamp * _350) - (10^18 * _366 * _350) / _334) < _528:
                                    revert with 'NH{q', 17
                                if mem[_560 + 64] and _302 + ((10^18 * block.timestamp * _350) - (10^18 * _366 * _350) / _334) - _528 > -1 / mem[_560 + 64]:
                                    revert with 'NH{q', 17
                                require ext_code.size(pools[idx])
                                staticcall pools[idx].getInfo(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _658 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 128
                                _668 = mem[64]
                                if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 128
                                require mem[_658] == mem[_658]
                                mem[_668] = mem[_658]
                                require mem[_658 + 32] == mem[_658 + 32]
                                mem[_668 + 32] = mem[_658 + 32]
                                require mem[_658 + 64] == mem[_658 + 64]
                                mem[_668 + 64] = mem[_658 + 64]
                                require mem[_658 + 96] == mem[_658 + 96]
                                mem[_668 + 96] = mem[_658 + 96]
                                if mem[_668] > -((_302 * _612) + ((10^18 * block.timestamp * _350) - (10^18 * _366 * _350) / _334 * _612) - (_528 * _612) / 10^18) - 1:
                                    revert with 'NH{q', 17
                                if mem[_668] + ((_302 * _612) + ((10^18 * block.timestamp * _350) - (10^18 * _366 * _350) / _334 * _612) - (_528 * _612) / 10^18) > 0:
                                    return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}



}
