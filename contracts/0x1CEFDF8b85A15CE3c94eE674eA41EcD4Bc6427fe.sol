contract main {




// =====================  Runtime code  =====================


address oracleAddress;
address underlyingAddress;
uint32 sub_6e000475; offset 224
uint256 viewPrice;
uint256 stor2;
uint32 stor3; offset 224
uint256 stor3;
uint256 priceZero;
uint32 stor4;
uint256 stor4; offset 32
uint256 sub_9075a3bf;

function T() payable {
    return sub_6e000475
}

function sub_6e000475(?) payable {
    return sub_6e000475
}

function underlying() payable {
    return underlyingAddress
}

function oracle() payable {
    return oracleAddress
}

function priceZero() payable {
    return priceZero
}

function sub_9075a3bf(?) payable {
    return sub_9075a3bf
}

function price() payable {
    return viewPrice
}

function viewPrice() payable {
    return viewPrice
}

function _fallback() payable {
    revert
}

function sub_a895f21b(?) payable {
    return priceZero, sub_9075a3bf
}

function getResults(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    call oracleAddress.getResult(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    sub_6e000475 = uint32(ext_call.return_data[32])
    stor2 = ext_call.return_data[4 len 28] or Mask(32, 224, stor2)
    return 1
}

function getPrices() payable {
    require ext_code.size(oracleAddress)
    call oracleAddress.getResult(address arg1) with:
         gas gas_remaining wei
        args underlyingAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require Mask(112, 0, ext_call.return_data[0])
    if not Mask(224, 0, ext_call.return_data[0]):
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
        if not 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
            if not ext_call.return_data[0]:
                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                    require 2 * Mask(111, 0, ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    else:
                        require ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                    require 2 * Mask(111, 0, ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    else:
                        require ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            revert with 0, 'SafeMath: division by zero'
        require 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
        if 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) != 4294967296:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 3:
            if not Mask(224, 0, 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))):
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                        require 2 * Mask(111, 0, ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                        require 2 * Mask(111, 0, ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                           4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[32])
                if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * Mask(111, 0, ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[32])
                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * Mask(111, 0, ext_call.return_data[32])
            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
        s = (Mask(224, 0, 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))) << 31) + 1
        t = 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
        while s < t:
            require s
            s = (4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / s) + s / 2
            t = s
            continue 
    else:
        require Mask(224, 0, ext_call.return_data[0])
        if 4294967296 * ext_call.return_data[0] / Mask(224, 0, ext_call.return_data[0]) != 4294967296:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
        if not 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
            if not ext_call.return_data[0]:
                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                    require 2 * Mask(111, 0, ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    else:
                        require ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                    require 2 * Mask(111, 0, ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    else:
                        require ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            revert with 0, 'SafeMath: division by zero'
        require 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
        if 4294967296 * 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) != 4294967296:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if 4294967296 * 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 3:
            if not Mask(224, 0, 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))):
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                        require 2 * Mask(111, 0, ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                        require 2 * Mask(111, 0, ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                           4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[32])
                if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])), 
                       4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * Mask(111, 0, ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[32])
                if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                       4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32])
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * Mask(111, 0, ext_call.return_data[32])
            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])), 
                   4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
        s = (Mask(224, 0, 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))) << 31) + 1
        t = 4294967296 * 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
        while s < t:
            require s
            s = (4294967296 * 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / s) + s / 2
            t = s
            continue 
    if not ext_call.return_data[0]:
        if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * Mask(111, 0, ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 2 * Mask(111, 0, ext_call.return_data[32])
            if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                    if t <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if t:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                else:
                    if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if t:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                revert
            require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                if t <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require t
                if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                if 0 / t <= 100:
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if t <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t
            if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t <= 100:
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
                   4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * Mask(111, 0, ext_call.return_data[32])
        if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
            if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                if t <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if t:
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            else:
                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if t <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if t:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            revert
        require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
        if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
            if t <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t
            if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            if 0 / t <= 100:
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if t <= 0:
            revert with 0, 'SafeMath: division by zero'
        require t
        if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t <= 100:
            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
        return Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
               4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
    require ext_call.return_data[0]
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 2 * Mask(111, 0, ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * Mask(111, 0, ext_call.return_data[32])
        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
            if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                if t <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if t:
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            else:
                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if t <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if t:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            revert
        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
            if t <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t
            if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            if 0 / t <= 100:
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
            return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if t <= 0:
            revert with 0, 'SafeMath: division by zero'
        require t
        if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t <= 100:
            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
        return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
               4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
    require ext_call.return_data[0]
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 2 * Mask(111, 0, ext_call.return_data[32])
    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
            if t <= 0:
                revert with 0, 'SafeMath: division by zero'
            if t:
                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
        else:
            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if t <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if t:
                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
        revert
    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
        if t <= 0:
            revert with 0, 'SafeMath: division by zero'
        require t
        if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
        if 0 / t <= 100:
            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
        return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 0 / t
    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if t <= 0:
        revert with 0, 'SafeMath: division by zero'
    require t
    if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t <= 100:
        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
    return Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t), 
           4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
}

function sub_74fda2dc(?) payable {
    require ext_code.size(oracleAddress)
    call oracleAddress.getResult(address arg1) with:
         gas gas_remaining wei
        args underlyingAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require Mask(112, 0, ext_call.return_data[0])
    if not Mask(224, 0, ext_call.return_data[0]):
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
        if not 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
            if not ext_call.return_data[0]:
                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                    require 2 * Mask(111, 0, ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    else:
                        require ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                    require 2 * Mask(111, 0, ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    else:
                        require ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            revert with 0, 'SafeMath: division by zero'
        require 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
        if 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) != 4294967296:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 3:
            if not Mask(224, 0, 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))):
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                        require 2 * Mask(111, 0, ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                        require 2 * Mask(111, 0, ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    uint32(stor4.field_0) = 0
                    Mask(224, 0, stor4.field_32) = Mask(224, 0, 0 / 2 * Mask(111, 0, ext_call.return_data[32]))
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    uint32(stor4.field_0) = 0
                    Mask(224, 0, stor4.field_32) = Mask(224, 0, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]))
                Mask(224, 0, stor3.field_0) = Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    uint32(stor4.field_0) = 0
                    Mask(224, 0, stor4.field_32) = Mask(224, 0, 0 / 2 * Mask(111, 0, ext_call.return_data[32]))
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    uint32(stor4.field_0) = 0
                    Mask(224, 0, stor4.field_32) = Mask(224, 0, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]))
                Mask(224, 0, stor3.field_0) = Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32
        else:
            s = (Mask(224, 0, 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))) << 31) + 1
            t = 4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
            while s < t:
                require s
                s = (4294967296 * 0 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / s) + s / 2
                t = s
                continue 
            if not ext_call.return_data[0]:
                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                            if t <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if t:
                                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        else:
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if t <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if t:
                                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        revert
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 0 / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 0 / t
                    else:
                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                            if t <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if t:
                                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        else:
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if t <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if t:
                                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        revert
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 0 / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 0 / t
                    else:
                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                Mask(224, 0, stor3.field_0) = Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                            if t <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if t:
                                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        else:
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if t <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if t:
                                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        revert
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 0 / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 0 / t
                    else:
                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                            if t <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if t:
                                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        else:
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if t <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if t:
                                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        revert
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 0 / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 0 / t
                    else:
                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                Mask(224, 0, stor3.field_0) = Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32
    else:
        require Mask(224, 0, ext_call.return_data[0])
        if 4294967296 * ext_call.return_data[0] / Mask(224, 0, ext_call.return_data[0]) != 4294967296:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
        if not 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
            if not ext_call.return_data[0]:
                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                    require 2 * Mask(111, 0, ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    else:
                        require ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                    require 2 * Mask(111, 0, ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    else:
                        require ext_call.return_data[0]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                            require 2 * Mask(111, 0, ext_call.return_data[32])
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            revert with 0, 'SafeMath: division by zero'
        require 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
        if 4294967296 * 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) != 4294967296:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if 4294967296 * 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) <= 3:
            if not Mask(224, 0, 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))):
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                        require 2 * Mask(111, 0, ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 2 * Mask(111, 0, ext_call.return_data[0]) > 0:
                        require 2 * Mask(111, 0, ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if 2 * Mask(111, 0, ext_call.return_data[32]) > 0:
                                require 2 * Mask(111, 0, ext_call.return_data[32])
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                                    if 0 / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    uint32(stor4.field_0) = 0
                    Mask(224, 0, stor4.field_32) = Mask(224, 0, 0 / 2 * Mask(111, 0, ext_call.return_data[32]))
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    uint32(stor4.field_0) = 0
                    Mask(224, 0, stor4.field_32) = Mask(224, 0, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]))
                Mask(224, 0, stor3.field_0) = Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                            require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                            if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    uint32(stor4.field_0) = 0
                    Mask(224, 0, stor4.field_32) = Mask(224, 0, 0 / 2 * Mask(111, 0, ext_call.return_data[32]))
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                            require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                            if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != 1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32 <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) <= 100:
                        revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                    uint32(stor4.field_0) = 0
                    Mask(224, 0, stor4.field_32) = Mask(224, 0, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]))
                Mask(224, 0, stor3.field_0) = Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])) >> 32
        else:
            s = (Mask(224, 0, 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))) << 31) + 1
            t = 4294967296 * 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0]))
            while s < t:
                require s
                s = (4294967296 * 4294967296 * ext_call.return_data[0] / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) / s) + s / 2
                t = s
                continue 
            if not ext_call.return_data[0]:
                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                            if t <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if t:
                                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        else:
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if t <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if t:
                                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        revert
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 0 / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 0 / t
                    else:
                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                            if t <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if t:
                                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        else:
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if t <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if t:
                                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        revert
                    require 0 / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 0 / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 0 / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 0 / t
                    else:
                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                Mask(224, 0, stor3.field_0) = Mask(224, 32, 0 / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 2 * Mask(111, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * Mask(111, 0, ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                            if t <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if t:
                                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        else:
                            if 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                                if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if t <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if t:
                                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        revert
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 0 / 2 * Mask(111, 0, ext_call.return_data[32]):
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 0 / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 0 / t
                    else:
                        require 0 / 2 * Mask(111, 0, ext_call.return_data[32])
                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / 0 / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 4294967296 * 0 / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 2 * Mask(111, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * Mask(111, 0, ext_call.return_data[32])
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]):
                        if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                            if t <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if t:
                                revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        else:
                            if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                                if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if t <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if t:
                                    revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        revert
                    require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0])
                    if 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) != t:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]):
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 0 / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 0 / t
                    else:
                        require 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32])
                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) != 4294967296:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require t
                        if Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32 <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        if 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t <= 100:
                            revert with 0, 'Tarot: PRICE_CALCULATION_ERROR'
                        sub_9075a3bf = 4294967296 * 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[32]) / t
                Mask(224, 0, stor3.field_0) = Mask(224, 32, 10^18 * ext_call.return_data[0] / 2 * Mask(111, 0, ext_call.return_data[0]) * t) >> 32
    uint32(stor3.field_224) = 0
    return 0
}



}
