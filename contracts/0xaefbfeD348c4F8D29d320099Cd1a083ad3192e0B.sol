contract main {




// =====================  Runtime code  =====================


const delay = 1800

const amount = 8 * 10^16


mapping of uint256 stor0;

function _fallback() payable {
    revert
}

function allowedToWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[address(arg1)]:
        if block.timestamp < stor0[address(arg1)]:
            return 0
    return 1
}

function drip() payable {
    if stor0[address(msg.sender)]:
        require block.timestamp >= stor0[address(msg.sender)]
    call msg.sender with:
       value 8 * 10^16 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
    if block.timestamp > -1801:
        revert with 0, 17
    stor0[msg.sender] = block.timestamp + 1800
}



}
