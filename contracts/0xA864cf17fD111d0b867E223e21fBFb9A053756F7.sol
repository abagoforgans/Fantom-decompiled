contract main {




// =====================  Runtime code  =====================


const waitTime = 1800

const tokenAmount = 100 * 10^18


address tokenInstanceAddress;
mapping of uint256 stor1;

function tokenInstance() payable {
    return tokenInstanceAddress
}

function _fallback() payable {
    revert
}

function allowedToWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[address(arg1)]:
        if block.timestamp < stor1[address(arg1)]:
            return 0
    return 1
}

function requestTokens() payable {
    if stor1[address(msg.sender)]:
        require block.timestamp >= stor1[address(msg.sender)]
    require ext_code.size(tokenInstanceAddress)
    call tokenInstanceAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 100 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1[address(msg.sender)] = block.timestamp + 1800
}



}
