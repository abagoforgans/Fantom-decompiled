contract main {




// =====================  Runtime code  =====================


const isPriceOracle = 1


address adminAddress;
mapping of uint256 assetPrices;
mapping of address stor2;

function assetPrices(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return assetPrices[address(arg1)]
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin can set new admin'
    adminAddress = arg1
    emit NewAdmin(adminAddress, arg1);
}

function setDirectPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin can set price'
    emit PricePosted(address(arg1), assetPrices[address(arg1)], arg2, arg2);
    assetPrices[address(arg1)] = arg2
}

function setPriceFeed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, 'only admin can set price'
    emit PriceFeedChanged(address(arg1), stor2[address(arg1)], arg2);
    stor2[address(arg1)] = arg2
}

function getUnderlyingPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if assetPrices[address(arg1)]:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 18 == ext_call.return_data[31 len 1]:
            return assetPrices[address(arg1)]
        if 18 <= ext_call.return_data[31 len 1]:
            if not 10^(uint8(ext_call.return_data[0]) - 18):
                revert with 0, 'SafeMath: division by zero'
            return (assetPrices[address(arg1)] / 10^(uint8(ext_call.return_data[0]) - 18))
        if uint8(ext_call.return_data[0]) > 18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not assetPrices[address(arg1)]:
            return 0
        if 10^(-uint8(ext_call.return_data[0]) + 18) * assetPrices[address(arg1)] / assetPrices[address(arg1)] != 10^(-uint8(ext_call.return_data[0]) + 18):
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 261 len 31]
        return (10^(-uint8(ext_call.return_data[0]) + 18) * assetPrices[address(arg1)])
    if not stor2[address(arg1)]:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] != 18:
            if 18 <= ext_call.return_data[31 len 1]:
                if not 10^(uint8(ext_call.return_data[0]) - 18):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / 10^(uint8(ext_call.return_data[0]) - 18))
            if uint8(ext_call.return_data[0]) > 18:
                revert with 0, 'SafeMath: subtraction overflow'
            else:
                return 0
        else:
            return 0
    require ext_code.size(stor2[address(arg1)])
    staticcall stor2[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 == ext_call.return_data[31 len 1]:
        return ext_call.return_data[32]
    if 18 <= ext_call.return_data[31 len 1]:
        if not 10^(uint8(ext_call.return_data[0]) - 18):
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[32] / 10^(uint8(ext_call.return_data[0]) - 18))
    if uint8(ext_call.return_data[0]) > 18:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[32]:
        return 0
    if 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32] / ext_call.return_data[32] != 10^(-uint8(ext_call.return_data[0]) + 18):
        revert with 0, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(2 * ceil32(return_data.size)) + 261 len 31]
    return (10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32])
}



}
