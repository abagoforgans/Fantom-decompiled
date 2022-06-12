contract main {




// =====================  Runtime code  =====================


address sub_691720b5Address;

function sub_691720b5(?) payable {
    return sub_691720b5Address
}

function _fallback() payable {
    revert
}

function sub_86ab0ca9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_691720b5Address)
    staticcall sub_691720b5Address.summoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
}



}
