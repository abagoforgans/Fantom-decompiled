contract main {




// =====================  Runtime code  =====================


address stor0;

function sub_db0da1ef(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_aec32aa1(?) payable {
    require msg.sender == stor0
}

function sub_36f389dc(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
}

function sub_ab8fea6a(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
}

function sub_a7d10cc6(?) payable {
    require msg.sender == stor0
    idx = 500
    while idx > 100:
        idx = idx - 1
        continue 
}

function sub_ce735175(?) payable {
    require msg.sender == stor0
    idx = 500
    while idx > 100:
        require msg.sender == stor0
        s = 500
        while s > 100:
            s = s - 1
            continue 
        idx = idx - 1
        continue 
}

function sub_ae6fdd0d(?) payable {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e0b2933c(?) payable {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
