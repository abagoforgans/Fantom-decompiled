contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_1047311f(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if cd[4] <= 0:
        revert with 0, 'amountIn must be greater than 0'
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[4]:
        revert with 0, 'must approve first'
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
