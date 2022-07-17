contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_84cb37ea(?) {
    require calldata.size - 4 >= 32
}

function sub_9caac016(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
}

function transfer_tips() {
    call 0xcb65e182a9f298de0bdf97d25a3aa840cad7e267 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function leave(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    if bool(sha3(block.difficulty, block.timestamp)):
        call stor0._leave(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
    else:
        call stor0.0x7ed75068 with:
             gas gas_remaining wei
            args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
