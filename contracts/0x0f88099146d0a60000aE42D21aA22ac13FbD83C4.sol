contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_bc150002(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor1 = address(arg1)
}

function sub_46fc864e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor0.length++
    stor0[stor0.length] = arg1
}

function sub_e78b9033(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor1)
    call stor1.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
