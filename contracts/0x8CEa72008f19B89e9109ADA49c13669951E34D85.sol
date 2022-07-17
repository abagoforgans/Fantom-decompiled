contract main {




// =====================  Runtime code  =====================


#
#  - acceptDebt(address arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address oracleAddress;
mapping of struct workers;
address governorAddress;

function governor() payable {
    return governorAddress
}

function workers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(workers[arg1].field_0), workers[arg1].field_0, workers[arg1].field_0, workers[arg1].field_136
}

function oracle() payable {
    return oracleAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x748be007: owner, 0
    owner = 0
}

function setGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    governorAddress = arg1
    emit SetGovernor(msg.sender, arg1);
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    oracleAddress = arg1
    emit SetOracle(oracleAddress, msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0x748be007: owner, arg1
    owner = arg1
}

function sub_01d3a87c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if governorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WorkerConfig::onlyGovernor:: msg.sender not governor'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        workers[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = uint8(bool(cd[36]))
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 152
        mem[mem[64]] = bool(workers[address(cd[((32 * idx) + cd[4] + 36)])].field_0)
        mem[mem[64] + 32] = workers[address(cd[((32 * idx) + cd[4] + 36)])].field_8
        mem[mem[64] + 64] = workers[address(cd[((32 * idx) + cd[4] + 36)])].field_72
        mem[mem[64] + 96] = workers[address(cd[((32 * idx) + cd[4] + 36)])].field_136
        emit 0xe008a74b: bool(workers[address(cd[((32 * idx) + cd[4] + 36)])].field_0), workers[address(cd[((32 * idx) + cd[4] + 36)])].field_0, workers[address(cd[((32 * idx) + cd[4] + 36)])].field_0, workers[address(cd[((32 * idx) + cd[4] + 36)])].field_136, msg.sender, address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = msg.sender
        emit 0x748be007: 0, msg.sender
        oracleAddress = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit 0x748be007: 0, msg.sender
            oracleAddress = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit 0x748be007: 0, msg.sender
                oracleAddress = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit 0x748be007: 0, msg.sender
                    oracleAddress = arg1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit 0x748be007: 0, msg.sender
                        oracleAddress = arg1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit 0x748be007: 0, msg.sender
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        oracleAddress = arg1
                        uint8(stor0.field_8) = 0
}

function sub_0e803bf5(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (128 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'WorkConfig::setConfigs:: bad len'
    idx = 0
    while idx < ('cd', 4).length:
        _19 = mem[64]
        mem[64] = mem[64] + 128
        require idx < ('cd', 36).length
        require cd[((128 * idx) + cd[36] + 36)] == bool(cd[((128 * idx) + cd[36] + 36)])
        mem[_19] = bool(cd[((128 * idx) + cd[36] + 36)])
        require idx < ('cd', 36).length
        require cd[((128 * idx) + cd[36] + 68)] == uint64(cd[((128 * idx) + cd[36] + 68)])
        mem[_19 + 32] = uint64(cd[((128 * idx) + cd[36] + 68)])
        require idx < ('cd', 36).length
        require cd[((128 * idx) + cd[36] + 100)] == uint64(cd[((128 * idx) + cd[36] + 100)])
        mem[_19 + 64] = uint64(cd[((128 * idx) + cd[36] + 100)])
        require idx < ('cd', 36).length
        require cd[((128 * idx) + cd[36] + 132)] == uint64(cd[((128 * idx) + cd[36] + 132)])
        mem[_19 + 96] = uint64(cd[((128 * idx) + cd[36] + 132)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        workers[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = uint8(bool(cd[((128 * idx) + cd[36] + 36)]))
        workers[address(cd[((32 * idx) + cd[4] + 36)])].field_8 = uint64(cd[((128 * idx) + cd[36] + 68)])
        workers[address(cd[((32 * idx) + cd[4] + 36)])].field_72 = uint64(cd[((128 * idx) + cd[36] + 100)])
        workers[address(cd[((32 * idx) + cd[4] + 36)])].field_136 = uint64(cd[((128 * idx) + cd[36] + 132)])
        workers[address(cd[((32 * idx) + cd[4] + 36)])].field_200 = Mask(56, 200, bool(cd[((128 * idx) + cd[36] + 36)])) >> 200
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 152
        mem[mem[64]] = bool(workers[address(cd[((32 * idx) + cd[4] + 36)])].field_0)
        mem[mem[64] + 32] = workers[address(cd[((32 * idx) + cd[4] + 36)])].field_8
        mem[mem[64] + 64] = workers[address(cd[((32 * idx) + cd[4] + 36)])].field_72
        mem[mem[64] + 96] = workers[address(cd[((32 * idx) + cd[4] + 36)])].field_136
        emit 0xe008a74b: bool(workers[address(cd[((32 * idx) + cd[4] + 36)])].field_0), workers[address(cd[((32 * idx) + cd[4] + 36)])].field_0, workers[address(cd[((32 * idx) + cd[4] + 36)])].field_0, workers[address(cd[((32 * idx) + cd[4] + 36)])].field_136, msg.sender, address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}

function isStable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.lpToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(112, 0, ext_call.return_data[0]):
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 0:
                revert with 0, 'WorkerConfig::isStable:: bad t0 balance'
    else:
        if 101 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 101:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            if 0 > 101 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'WorkerConfig::isStable:: bad t0 balance'
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'WorkerConfig::isStable:: bad t0 balance'
    if not Mask(112, 0, ext_call.return_data[32]):
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 0:
                revert with 0, 'WorkerConfig::isStable:: bad t1 balance'
    else:
        if 101 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 101:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            if 0 > 101 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'WorkerConfig::isStable:: bad t1 balance'
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'WorkerConfig::isStable:: bad t1 balance'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPrice(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
        revert with 0, 32, 40, 0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520, 'oo stale' << 192
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not Mask(112, 0, ext_call.return_data[32]):
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not ext_call.return_data[0]:
            if 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > 0:
                    revert with 0, 
                                32,
                                39,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206869676800000000000000000000000000000000000000000000000000
        else:
            if workers[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != workers[address(arg1)].field_136:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                if 0 > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                39,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206869676800000000000000000000000000000000000000000000000000
            else:
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                39,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206869676800000000000000000000000000000000000000000000000000
        if not ext_call.return_data[0]:
            if 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                    revert with 0, 'SafeMath: multiplication overflow'
                if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206c6f770000000000000000000000000000000000000000000000000000
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                if 0 < 10000 * ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206c6f770000000000000000000000000000000000000000000000000000
            else:
                if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                    revert with 0, 'SafeMath: multiplication overflow'
                if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 10000 * ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206c6f770000000000000000000000000000000000000000000000000000
    else:
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^18 * Mask(112, 0, ext_call.return_data[32]):
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not ext_call.return_data[0]:
                if 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
            else:
                if workers[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != workers[address(arg1)].field_136:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 0 > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
                else:
                    if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
            if not ext_call.return_data[0]:
                if 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 0 < 10000 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
                else:
                    if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 10000 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
        else:
            if 10^18 * 10^ext_call.return_data[31 len 1] * Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) != 10^ext_call.return_data[31 len 1]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not ext_call.return_data[0]:
                if 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 10000 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
            else:
                if workers[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != workers[address(arg1)].field_136:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 0 > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
                else:
                    if 10000 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
            if not ext_call.return_data[0]:
                if 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if workers[address(arg1)].field_136 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if workers[address(arg1)].field_136 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 0 < 10000 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
                else:
                    if workers[address(arg1)].field_136 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if workers[address(arg1)].field_136 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 10000 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
    return 1
}

function workFactor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.lpToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(112, 0, ext_call.return_data[0]):
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 0:
                revert with 0, 'WorkerConfig::isStable:: bad t0 balance'
    else:
        if 101 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 101:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            if 0 > 101 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'WorkerConfig::isStable:: bad t0 balance'
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'WorkerConfig::isStable:: bad t0 balance'
    if not Mask(112, 0, ext_call.return_data[32]):
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 0:
                revert with 0, 'WorkerConfig::isStable:: bad t1 balance'
    else:
        if 101 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 101:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            if 0 > 101 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'WorkerConfig::isStable:: bad t1 balance'
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'WorkerConfig::isStable:: bad t1 balance'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPrice(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
        revert with 0, 32, 40, 0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520, 'oo stale' << 192
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not Mask(112, 0, ext_call.return_data[32]):
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not ext_call.return_data[0]:
            if 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > 0:
                    revert with 0, 
                                32,
                                39,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206869676800000000000000000000000000000000000000000000000000
        else:
            if workers[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != workers[address(arg1)].field_136:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                if 0 > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                39,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206869676800000000000000000000000000000000000000000000000000
            else:
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                39,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206869676800000000000000000000000000000000000000000000000000
        if not ext_call.return_data[0]:
            if 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                    revert with 0, 'SafeMath: multiplication overflow'
                if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206c6f770000000000000000000000000000000000000000000000000000
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                if 0 < 10000 * ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206c6f770000000000000000000000000000000000000000000000000000
            else:
                if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                    revert with 0, 'SafeMath: multiplication overflow'
                if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 10000 * ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206c6f770000000000000000000000000000000000000000000000000000
    else:
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^18 * Mask(112, 0, ext_call.return_data[32]):
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not ext_call.return_data[0]:
                if 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
            else:
                if workers[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != workers[address(arg1)].field_136:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 0 > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
                else:
                    if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
            if not ext_call.return_data[0]:
                if 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 0 < 10000 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
                else:
                    if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 10000 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
        else:
            if 10^18 * 10^ext_call.return_data[31 len 1] * Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) != 10^ext_call.return_data[31 len 1]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not ext_call.return_data[0]:
                if 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 10000 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
            else:
                if workers[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != workers[address(arg1)].field_136:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 0 > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
                else:
                    if 10000 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
            if not ext_call.return_data[0]:
                if 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if workers[address(arg1)].field_136 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if workers[address(arg1)].field_136 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 0 < 10000 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
                else:
                    if workers[address(arg1)].field_136 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if workers[address(arg1)].field_136 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 10000 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
    return workers[address(arg1)].field_8
}

function killFactor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.lpToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(112, 0, ext_call.return_data[0]):
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 0:
                revert with 0, 'WorkerConfig::isStable:: bad t0 balance'
    else:
        if 101 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 101:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            if 0 > 101 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'WorkerConfig::isStable:: bad t0 balance'
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'WorkerConfig::isStable:: bad t0 balance'
    if not Mask(112, 0, ext_call.return_data[32]):
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 0:
                revert with 0, 'WorkerConfig::isStable:: bad t1 balance'
    else:
        if 101 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 101:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            if 0 > 101 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'WorkerConfig::isStable:: bad t1 balance'
        else:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if 100 * ext_call.return_data[0] > 101 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'WorkerConfig::isStable:: bad t1 balance'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPrice(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < block.timestamp - (168 * 24 * 3600):
        revert with 0, 32, 40, 0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520, 'oo stale' << 192
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not Mask(112, 0, ext_call.return_data[32]):
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not ext_call.return_data[0]:
            if 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > 0:
                    revert with 0, 
                                32,
                                39,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206869676800000000000000000000000000000000000000000000000000
        else:
            if workers[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != workers[address(arg1)].field_136:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                if 0 > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                39,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206869676800000000000000000000000000000000000000000000000000
            else:
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                39,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206869676800000000000000000000000000000000000000000000000000
        if not ext_call.return_data[0]:
            if 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                    revert with 0, 'SafeMath: multiplication overflow'
                if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206c6f770000000000000000000000000000000000000000000000000000
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                if 0 < 10000 * ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206c6f770000000000000000000000000000000000000000000000000000
            else:
                if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                    revert with 0, 'SafeMath: multiplication overflow'
                if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 10000 * ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                38,
                                0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                0x6f6f206c6f770000000000000000000000000000000000000000000000000000
    else:
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^18 * Mask(112, 0, ext_call.return_data[32]):
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not ext_call.return_data[0]:
                if 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
            else:
                if workers[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != workers[address(arg1)].field_136:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 0 > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
                else:
                    if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
            if not ext_call.return_data[0]:
                if 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 0 < 10000 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
                else:
                    if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if workers[address(arg1)].field_136 * 0 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 10000 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
        else:
            if 10^18 * 10^ext_call.return_data[31 len 1] * Mask(112, 0, ext_call.return_data[32]) / 10^18 * Mask(112, 0, ext_call.return_data[32]) != 10^ext_call.return_data[31 len 1]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not ext_call.return_data[0]:
                if 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 10000 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > 0:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
            else:
                if workers[address(arg1)].field_136 * ext_call.return_data[0] / ext_call.return_data[0] != workers[address(arg1)].field_136:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 0 > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
                else:
                    if 10000 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > workers[address(arg1)].field_136 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206869676800000000000000000000000000000000000000000000000000
            if not ext_call.return_data[0]:
                if 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if workers[address(arg1)].field_136 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if workers[address(arg1)].field_136 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                    if 0 < 10000 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
                else:
                    if workers[address(arg1)].field_136 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) != workers[address(arg1)].field_136:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if workers[address(arg1)].field_136 * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) < 10000 * ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe576f726b6572436f6e6669673a3a6973537461626c653a3a20707269636520,
                                    0x6f6f206c6f770000000000000000000000000000000000000000000000000000
    return workers[address(arg1)].field_72
}



}
