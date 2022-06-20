contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 minDebtSize;
uint256 reservePoolBps;
uint256 killBps;
mapping of address workers;
address interestModelAddress;
address wrappedNativeAddr;
address wNativeRelayerAddress;
address sub_f5a45b5cAddress;
uint256 sub_231850d6;
mapping of uint8 stor160;

function getReservePoolBps() payable {
    return reservePoolBps
}

function sub_231850d6(?) payable {
    return sub_231850d6
}

function getKillBps() payable {
    return killBps
}

function workers(address arg1) payable {
    require calldata.size - 4 >= 32
    return workers[arg1]
}

function sub_4b96b4dc(?) payable {
    return sub_f5a45b5cAddress
}

function owner() payable {
    return owner
}

function isWorker(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(workers[address(arg1)])
}

function interestModel() payable {
    return interestModelAddress
}

function wNativeRelayer() payable {
    return wNativeRelayerAddress
}

function getWNativeRelayer() payable {
    return wNativeRelayerAddress
}

function minDebtSize() payable {
    return minDebtSize
}

function wrappedNative() payable {
    return wrappedNativeAddr
}

function getWrappedNativeAddr() payable {
    return wrappedNativeAddr
}

function sub_f5a45b5c(?) payable {
    return sub_f5a45b5cAddress
}

function whitelistedCallers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor160[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function acceptDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(workers[address(arg1)])
    staticcall workers[address(arg1)].0x237f0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function killFactor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(workers[address(arg1)])
    staticcall workers[address(arg1)].0x13f6321b with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function workFactor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(workers[address(arg1)])
    staticcall workers[address(arg1)].0xad58e573 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getInterestRate(uint256 arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(interestModelAddress)
    staticcall interestModelAddress.0x1ea6e1d4 with:
            gas gas_remaining wei
           args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function setMaxKillBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg1 >= 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x64436f6e666967757261626c65496e7465726573745661756c74436f6e6669673a3a7365744d61784b696c6c4270733a3a20626164205f6d61784b696c6c4270
    sub_231850d6 = arg1
    emit SetMaxKillBps(sub_231850d6, msg.sender);
}

function sub_1bb8c61d(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 160
        stor160[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        mem[96] = bool(cd[36])
        emit SetWhitelistedCaller(bool(cd[36]), msg.sender, address(cd[((32 * idx) + cd[4] + 36)]));
        idx = idx + 1
        continue 
}

function setParams(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, address arg5, address arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > sub_231850d6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    75,
                    0x73436f6e666967757261626c65496e7465726573745661756c74436f6e6669673a3a736574506172616d733a3a206b696c6c20627073206578636565646564206d6178206b696c6c206270,
                    mem[239 len 21]
    minDebtSize = arg1
    reservePoolBps = arg2
    killBps = arg3
    interestModelAddress = arg4
    wrappedNativeAddr = arg5
    wNativeRelayerAddress = arg6
    sub_f5a45b5cAddress = arg7
    emit SetParams(minDebtSize, reservePoolBps, killBps, interestModelAddress, wrappedNativeAddr, wNativeRelayerAddress, sub_f5a45b5cAddress, msg.sender);
}

function setWorkers(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x73436f6e666967757261626c65496e7465726573745661756c74436f6e6669673a3a736574576f726b6572733a3a20626164206c656e6774,
                    mem[220 len 8]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 154
        workers[address(cd[((32 * idx) + arg1 + 36)])] = address(cd[((32 * idx) + arg2 + 36)])
        require idx < arg2.length
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        mem[128] = address(cd[((32 * idx) + arg2 + 36)])
        emit SetWorkers(address(cd[((32 * idx) + arg1 + 36)]), address(cd[((32 * idx) + arg2 + 36)]), msg.sender);
        idx = idx + 1
        continue 
}

function initialize(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, address arg5, address arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    if uint8(stor0.field_8):
        owner = msg.sender
        emit 0x728be007: 0, msg.sender
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit 0x728be007: 0, msg.sender
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit 0x728be007: 0, msg.sender
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit 0x728be007: 0, msg.sender
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit 0x728be007: 0, msg.sender
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit 0x728be007: 0, msg.sender
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    sub_231850d6 = 500
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > sub_231850d6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    75,
                    0x73436f6e666967757261626c65496e7465726573745661756c74436f6e6669673a3a736574506172616d733a3a206b696c6c20627073206578636565646564206d6178206b696c6c206270,
                    mem[239 len 21]
    minDebtSize = arg1
    reservePoolBps = arg2
    killBps = arg3
    interestModelAddress = arg4
    wrappedNativeAddr = arg5
    wNativeRelayerAddress = arg6
    sub_f5a45b5cAddress = arg7
    emit SetParams(minDebtSize, reservePoolBps, killBps, interestModelAddress, wrappedNativeAddr, wNativeRelayerAddress, sub_f5a45b5cAddress, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
