contract main {




// =====================  Runtime code  =====================


const getVersion = ext_call.return_data[0]

const getPrice = (10^10 * ext_call.return_data[32])


mapping of uint256 addressToAmountFunded;
array of address funders;
address owner;

function addressToAmountFunded(address arg1) {
    require calldata.size - 4 >= 32
    return addressToAmountFunded[arg1]
}

function owner() {
    return owner
}

function funders(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < funders.length
    return address(funders[arg1])
}

function _fallback() payable {
    revert
}

function getConversionRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x8a753747a1fa494ec906ce90e9f37563a8af630e)
    staticcall 0x8a753747a1fa494ec906ce90e9f37563a8af630e.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return (10^10 * arg1 * ext_call.return_data[32] / 10^18)
}

function withdraw() payable {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < funders.length:
        mem[0] = address(funders[idx])
        mem[32] = 0
        addressToAmountFunded[address(stor1[idx])] = 0
        idx = idx + 1
        continue 
    funders.length = 0
    idx = 0
    while funders.length > idx:
        address(funders[idx]) = 0
        idx = idx + 1
        continue 
}

function fund() payable {
    require ext_code.size(0x8a753747a1fa494ec906ce90e9f37563a8af630e)
    staticcall 0x8a753747a1fa494ec906ce90e9f37563a8af630e.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if 10^10 * msg.value * ext_call.return_data[32] / 10^18 < 50 * 10^18:
        revert with 0, 'You need to spend more ETH!'
    addressToAmountFunded[msg.sender] += msg.value
    funders.length++
    uint256(funders[funders.length]) = msg.sender or Mask(96, 160, uint256(funders[funders.length]))
}



}
