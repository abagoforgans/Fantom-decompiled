contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function wrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1:
        require ext_code.size(stor1)
        call stor1.0xb6b55f25 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function unwrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_63bf9f94(?) payable {
    require calldata.size - 4 >= 32
    if arg1:
        if not arg1:
            require ext_code.size(stor1)
            call stor1.0xb6b55f25 with:
                 gas gas_remaining wei
                args 0
        else:
            if stor2 * arg1 / arg1 != stor2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(stor1)
            call stor1.0xb6b55f25 with:
                 gas gas_remaining wei
                args (stor2 * arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_c75952de(?) payable {
    require calldata.size - 4 >= 32
    if arg1:
        if not arg1:
            require ext_code.size(stor1)
            call stor1.0x2e1a7d4d with:
                 gas gas_remaining wei
                args 0
        else:
            if stor2 * arg1 / arg1 != stor2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(stor1)
            call stor1.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (stor2 * arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
