contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function _fallback() payable {
    revert
}

function timeUntilUnlock() payable {
    if stor1 <= block.timestamp:
        return 0
    return (stor1 - block.timestamp)
}

function returnTokenAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 > block.timestamp:
        if stor1 - block.timestamp:
            revert with 0, 'Tokens are still locked'
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe43616e206f6e6c792072657475726e20746f6b656e7320746f20636f6e7472616374206f776e65,
                    mem[204 len 24]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function returnTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 > block.timestamp:
        if stor1 - block.timestamp:
            revert with 0, 'Tokens are still locked'
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe43616e206f6e6c792072657475726e20746f6b656e7320746f20636f6e7472616374206f776e65,
                    mem[204 len 24]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
