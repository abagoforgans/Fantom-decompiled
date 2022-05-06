contract main {




// =====================  Runtime code  =====================


#
#  - addValuesWithCall(uint256 arg1, uint256 arg2)
#  - sub_ec39111f(?)
#
const ok = 0


address sub_2328d052Address;
address sub_893033d7Address;
uint256 sub_4c5b9401;
uint8 stor3;

function sub_2328d052(?) {
    return sub_2328d052Address
}

function sub_4c5b9401(?) {
    return sub_4c5b9401
}

function sub_6a4edfa4(?) {
    return bool(stor3)
}

function sub_893033d7(?) {
    return sub_893033d7Address
}

function _fallback() payable {
    revert
}

function sub_4d0af5f1(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_2328d052Address)
    call sub_2328d052Address.0x7c69579a with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_b22be9c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(arg1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call 0x5638f545c240e52920f49c035ba6e85846d229d6 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args 0x5638f545c240e52920f49c035ba6e85846d229d6, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}



}
