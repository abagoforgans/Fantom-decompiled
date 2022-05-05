contract main {




// =====================  Runtime code  =====================


#
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
address stor1;
mapping of address stor2;
uint256 stor3;
address stor5;
address stor6;

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
    if not stor2[arg2]:
        revert with 0, 'The factory address error!'
    stor2[arg2] = arg1
}

function sub_172ea7a1(?) payable {
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
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Could not find pool'
    stor3 = arg4
    if stor3 == 1:
        stor5 = stor2[arg3]
    else:
        if stor3 == 2:
            stor6 = stor2[arg3]
}



}
