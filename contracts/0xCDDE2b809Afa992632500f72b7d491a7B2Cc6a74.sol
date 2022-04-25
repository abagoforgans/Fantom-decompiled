contract main {




// =====================  Runtime code  =====================


address sub_aa254851Address;
address stor1;

function sub_aa254851(?) {
    return sub_aa254851Address
}

function sub_004da378(?) {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Sol: Unauthorized'
    sub_aa254851Address = arg1
}

function _fallback() payable {
    if gas_remaining <= 2300:
    delegate sub_aa254851Address with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
