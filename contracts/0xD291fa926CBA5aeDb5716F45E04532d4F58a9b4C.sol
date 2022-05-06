contract main {




// =====================  Runtime code  =====================


#
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
address stor1;
address stor2;
uint256 stor2;
mapping of address stor3;

function getOwner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_9bda304b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner!'
    if not arg1:
        revert with 0, 'not zero address!'
    stor1 = arg1
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner!'
    if not arg1:
        revert with 0, 'zero address error'
    owner = arg1
}

function sub_08351838(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'not owner!'
    if not stor3[arg2]:
        revert with 0, 'The factory address error!'
    stor3[arg2] = arg1
}

function sub_60200c85(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'not owner!'
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    if not address(stor2):
        revert with 0, 'Could not find pool'
    require ext_code.size(address(stor2))
    call address(stor2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 128, 128, address(arg1), address(arg2), arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
