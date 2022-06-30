contract main {




// =====================  Runtime code  =====================


const getVersion = ext_call.return_data[0]

const getPrice = (10^9 * ext_call.return_data[32])


mapping of uint256 addressToAmountFunded;

function addressToAmountFunded(address arg1) {
    require calldata.size - 4 >= 32
    return addressToAmountFunded[arg1]
}

function _fallback() payable {
    revert
}

function fund() payable {
    addressToAmountFunded[address(msg.sender)] += msg.value
}

function getConversionRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x8a753747a1fa494ec906ce90e9f37563a8af630e)
    staticcall 0x8a753747a1fa494ec906ce90e9f37563a8af630e.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return (10^9 * ext_call.return_data[32] * arg1 / 10^18)
}



}
