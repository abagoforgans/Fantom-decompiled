contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 168
address pairAddress; offset 8
uint256 priorCumulative;
uint32 priorTimestamp;
uint128 stor3; offset 144
address stor3;
uint256 stor3;
uint256 duration;

function duration() payable {
    return duration
}

function priorCumulative() payable {
    return priorCumulative
}

function paused() payable {
    return bool(uint8(stor0.field_0))
}

function priorTimestamp() payable {
    return priorTimestamp
}

function pair() payable {
    return pairAddress
}

function _fallback() payable {
    revert
}

function setDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    duration = arg1
    emit DurationUpdate(arg1);
}

function pause() payable {
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor0.field_0) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not uint8(stor0.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor0.field_0) = 0
    emit Unpaused(msg.sender);
}

function read() payable {
    if uint8(stor0.field_0):
        return uint256(stor3.field_0), not bool(uint8(stor0.field_0))
    return uint256(stor3.field_0), bool(uint256(stor3.field_0))
}

function isOutdated() payable {
    require ext_code.size(pairAddress)
    staticcall pairAddress.price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[92 len 4] != uint32(block.timestamp):
        if uint32(block.timestamp) < ext_call.return_data[92 len 4]:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
            revert with 0, 17
    if uint32(block.timestamp) < priorTimestamp:
        revert with 0, 17
    return uint32(uint32(block.timestamp) - priorTimestamp) >= duration
}

function update() payable {
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    require ext_code.size(pairAddress)
    staticcall pairAddress.price0CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.price1CumulativeLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[92 len 4] == uint32(block.timestamp):
        if uint32(block.timestamp) < priorTimestamp:
            revert with 0, 17
        if uint32(uint32(block.timestamp) - priorTimestamp) < duration:
            return 0
        if ext_call.return_data[0] < priorCumulative:
            revert with 0, 17
        if not ext_call.return_data[0] - priorCumulative:
            if not uint32(uint32(block.timestamp) - priorTimestamp):
                revert with 0, 18
            if not 0 / uint32(uint32(block.timestamp) - priorTimestamp):
                uint256(stor3.field_0) = 0
                priorTimestamp = uint32(block.timestamp)
                priorCumulative = ext_call.return_data[0]
                emit Update(0);
            else:
                if 0 / uint32(uint32(block.timestamp) - priorTimestamp) and 10^18 > -1 / 0 / uint32(uint32(block.timestamp) - priorTimestamp):
                    revert with 0, 17
                if not 0 / uint32(uint32(block.timestamp) - priorTimestamp):
                    revert with 0, 18
                if 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp) / 0 / uint32(uint32(block.timestamp) - priorTimestamp) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                Mask(144, 0, stor3.field_0) = Mask(144, 112, 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112
                Mask(112, 0, stor3.field_144) = 0
                priorTimestamp = uint32(block.timestamp)
                priorCumulative = ext_call.return_data[0]
                emit Update((Mask(144, 112, 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112 / 10^18));
        else:
            if ext_call.return_data[0] - priorCumulative and 10^12 > -1 / ext_call.return_data[0] - priorCumulative:
                revert with 0, 17
            if not ext_call.return_data[0] - priorCumulative:
                revert with 0, 18
            if (10^12 * ext_call.return_data[0]) - (10^12 * priorCumulative) / ext_call.return_data[0] - priorCumulative != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not uint32(uint32(block.timestamp) - priorTimestamp):
                revert with 0, 18
            if not (10^12 * ext_call.return_data[0]) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp):
                uint256(stor3.field_0) = 0
                priorTimestamp = uint32(block.timestamp)
                priorCumulative = ext_call.return_data[0]
                emit Update(0);
            else:
                if (10^12 * ext_call.return_data[0]) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp) and 10^18 > -1 / (10^12 * ext_call.return_data[0]) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp):
                    revert with 0, 17
                if not (10^12 * ext_call.return_data[0]) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp):
                    revert with 0, 18
                if 10^18 * (10^12 * ext_call.return_data[0]) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp) / (10^12 * ext_call.return_data[0]) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                Mask(144, 0, stor3.field_0) = Mask(144, 112, 10^18 * (10^12 * ext_call.return_data[0]) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112
                Mask(112, 0, stor3.field_144) = 0
                priorTimestamp = uint32(block.timestamp)
                priorCumulative = ext_call.return_data[0]
                emit Update((Mask(144, 112, 10^18 * (10^12 * ext_call.return_data[0]) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112 / 10^18));
    else:
        if uint32(block.timestamp) < ext_call.return_data[92 len 4]:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'FixedPoint: DIV_BY_ZERO'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
            revert with 0, 17
        if uint32(block.timestamp) < priorTimestamp:
            revert with 0, 17
        if uint32(uint32(block.timestamp) - priorTimestamp) < duration:
            return 0
        if uint8(stor0.field_168):
            if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < priorCumulative:
                revert with 0, 17
            if not ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - priorCumulative:
                if not uint32(uint32(block.timestamp) - priorTimestamp):
                    revert with 0, 18
                if not 0 / uint32(uint32(block.timestamp) - priorTimestamp):
                    uint256(stor3.field_0) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                    emit Update(0);
                else:
                    if 0 / uint32(uint32(block.timestamp) - priorTimestamp) and 10^18 > -1 / 0 / uint32(uint32(block.timestamp) - priorTimestamp):
                        revert with 0, 17
                    if not 0 / uint32(uint32(block.timestamp) - priorTimestamp):
                        revert with 0, 18
                    if 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp) / 0 / uint32(uint32(block.timestamp) - priorTimestamp) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    Mask(144, 0, stor3.field_0) = Mask(144, 112, 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112
                    Mask(112, 0, stor3.field_144) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                    emit Update((Mask(144, 112, 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112 / 10^18));
            else:
                if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - priorCumulative and 10^12 > -1 / ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - priorCumulative:
                    revert with 0, 17
                if not ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - priorCumulative:
                    revert with 0, 18
                if (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - priorCumulative != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not uint32(uint32(block.timestamp) - priorTimestamp):
                    revert with 0, 18
                if not (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp):
                    uint256(stor3.field_0) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                    emit Update(0);
                else:
                    if (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp) and 10^18 > -1 / (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp):
                        revert with 0, 17
                    if not (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp):
                        revert with 0, 18
                    if 10^18 * (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp) / (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    Mask(144, 0, stor3.field_0) = Mask(144, 112, 10^18 * (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112
                    Mask(112, 0, stor3.field_144) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                    emit Update((Mask(144, 112, 10^18 * (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112 / 10^18));
        else:
            if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < priorCumulative:
                revert with 0, 17
            if not ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - priorCumulative:
                if not uint32(uint32(block.timestamp) - priorTimestamp):
                    revert with 0, 18
                if not 0 / uint32(uint32(block.timestamp) - priorTimestamp):
                    uint256(stor3.field_0) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                    emit Update(0);
                else:
                    if 0 / uint32(uint32(block.timestamp) - priorTimestamp) and 10^18 > -1 / 0 / uint32(uint32(block.timestamp) - priorTimestamp):
                        revert with 0, 17
                    if not 0 / uint32(uint32(block.timestamp) - priorTimestamp):
                        revert with 0, 18
                    if 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp) / 0 / uint32(uint32(block.timestamp) - priorTimestamp) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    Mask(144, 0, stor3.field_0) = Mask(144, 112, 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112
                    Mask(112, 0, stor3.field_144) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                    emit Update((Mask(144, 112, 10^18 * 0 / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112 / 10^18));
            else:
                if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - priorCumulative and 10^12 > -1 / ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - priorCumulative:
                    revert with 0, 17
                if not ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - priorCumulative:
                    revert with 0, 18
                if (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - priorCumulative != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not uint32(uint32(block.timestamp) - priorTimestamp):
                    revert with 0, 18
                if not (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp):
                    uint256(stor3.field_0) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                    emit Update(0);
                else:
                    if (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp) and 10^18 > -1 / (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp):
                        revert with 0, 17
                    if not (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp):
                        revert with 0, 18
                    if 10^18 * (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp) / (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    Mask(144, 0, stor3.field_0) = Mask(144, 112, 10^18 * (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112
                    Mask(112, 0, stor3.field_144) = 0
                    priorTimestamp = uint32(block.timestamp)
                    priorCumulative = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                    emit Update((Mask(144, 112, 10^18 * (10^12 * ext_call.return_data[0]) + (10^12 * Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - (10^12 * priorCumulative) / uint32(uint32(block.timestamp) - priorTimestamp)) >> 112 / 10^18));
    return 1
}



}
