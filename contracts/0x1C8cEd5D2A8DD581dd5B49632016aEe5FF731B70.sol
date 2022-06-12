contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    revert
}

function splitFunds() {
    if eth.balance(this.address) and stor6 > -1 / eth.balance(this.address):
        revert with 0, 17
    if eth.balance(this.address) and stor7 > -1 / eth.balance(this.address):
        revert with 0, 17
    if eth.balance(this.address) and stor8 > -1 / eth.balance(this.address):
        revert with 0, 17
    if eth.balance(this.address) and stor9 > -1 / eth.balance(this.address):
        revert with 0, 17
    if eth.balance(this.address) and stor10 > -1 / eth.balance(this.address):
        revert with 0, 17
    if eth.balance(this.address) and stor11 > -1 / eth.balance(this.address):
        revert with 0, 17
    call stor0 with:
       value eth.balance(this.address) * stor6 / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor1 with:
       value eth.balance(this.address) * stor7 / 10000 wei
         gas 2300 * is_zero(value) wei
    call stor2 with:
       value eth.balance(this.address) * stor8 / 10000 wei
         gas 2300 * is_zero(value) wei
    call stor3 with:
       value eth.balance(this.address) * stor9 / 10000 wei
         gas 2300 * is_zero(value) wei
    call stor4 with:
       value eth.balance(this.address) * stor10 / 10000 wei
         gas 2300 * is_zero(value) wei
    call stor5 with:
       value eth.balance(this.address) * stor11 / 10000 wei
         gas 2300 * is_zero(value) wei
}



}
