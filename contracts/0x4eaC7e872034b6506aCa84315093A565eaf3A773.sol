contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function setpool(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0 = arg1
}

function getbalance() payable {
    require ext_code.size(stor0)
    staticcall stor0.total() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
