contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    revert with 0, 'freds'
}

function doFlashloan(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(arg1)
    call arg1.flashLoan(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining wei
        args address(this.address), arg2, 96, 64, address(this.address), 1234
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
