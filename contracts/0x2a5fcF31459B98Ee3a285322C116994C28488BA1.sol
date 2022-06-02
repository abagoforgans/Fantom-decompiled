contract main {




// =====================  Runtime code  =====================


const sub_31d9b0cf(?) = 10^15


uint256 stor0;
address stor1;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function _fallback() payable {
    revert
}

function changeOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Not Authorized'
    stor1 = arg1
}

function claim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Not Authorized'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if ext_code.size(arg1) > 0:
        revert with 0, 'Only send FTM token to address'
    call arg1 with:
       value 10^15 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
    stor0 = 1
}



}
