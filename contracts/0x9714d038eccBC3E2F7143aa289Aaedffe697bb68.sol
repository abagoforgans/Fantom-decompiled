contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function bet(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require arg1 <= 10
    require msg.value > 0
    if arg1 != (block.number % 10) + 1:
        emit Won(bool rg1, uint256 rg2):
                 0,
    else:
        call msg.sender with:
           value (100 * msg.value) - (stor0 * msg.value) / 10 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Won(1, (100 * msg.value) - (stor0 * msg.value) / 10);
}



}
