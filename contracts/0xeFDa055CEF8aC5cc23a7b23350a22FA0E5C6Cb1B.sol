contract main {




// =====================  Runtime code  =====================


const getVersion = ext_call.return_data[0]

const getPrice = (10^6 * ext_call.return_data[32])


mapping of uint256 addressToAmountFunded;

function addressToAmountFunded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return addressToAmountFunded[arg1]
}

function _fallback() payable {
    revert
}

function getConversionRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x8a753747a1fa494ec906ce90e9f37563a8af630e)
    staticcall 0x8a753747a1fa494ec906ce90e9f37563a8af630e.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x8637bd05af6c69b5a63f9a49c2c1b10fd7e45803cd141a6937d1fe64f54:
        revert with 'NH{q', 17
    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xfffff79c842fa5093964a59c065b63d3e4ef0281ba7fc32ebe596c82e019b0ac:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] and arg1 > -1 / 10^6 * ext_call.return_data[32]:
        revert with 'NH{q', 17
    return (10^6 * ext_call.return_data[32] * arg1 / 10^18)
}

function fund() payable {
    require ext_code.size(0x8a753747a1fa494ec906ce90e9f37563a8af630e)
    staticcall 0x8a753747a1fa494ec906ce90e9f37563a8af630e.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x8637bd05af6c69b5a63f9a49c2c1b10fd7e45803cd141a6937d1fe64f54:
        revert with 'NH{q', 17
    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xfffff79c842fa5093964a59c065b63d3e4ef0281ba7fc32ebe596c82e019b0ac:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] and msg.value > -1 / 10^6 * ext_call.return_data[32]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[32] * msg.value / 10^18 < 50 * 10^18:
        revert with 0, 'You need to spend more ETH!'
    if addressToAmountFunded[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    addressToAmountFunded[address(msg.sender)] += msg.value
}



}
