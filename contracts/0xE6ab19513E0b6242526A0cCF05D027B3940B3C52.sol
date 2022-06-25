contract main {




// =====================  Runtime code  =====================


uint256 totalDonations;
uint256 sub_a19d575e;
address stor2;

function getTotalDonations() {
    return totalDonations
}

function sub_96f876a5(?) {
    return sub_a19d575e
}

function sub_a19d575e(?) {
    return sub_a19d575e
}

function totalDonations() {
    return totalDonations
}

function _fallback() payable {
    revert
}

function donate() payable {
    call stor2 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send money to me :('
    if totalDonations > -msg.value - 1:
        revert with 'NH{q', 17
    totalDonations += msg.value
    if sub_a19d575e > -2:
        revert with 'NH{q', 17
    sub_a19d575e++
}



}
