contract main {




// =====================  Runtime code  =====================


mapping of address sub_f81a7314;

function sub_f81a7314(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f81a7314[arg1]
}

function _fallback() payable {
    revert
}

function sub_5acf9885(?) payable {
    require calldata.size - 4 >= 32
    if sub_f81a7314[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Already have contract deployed from this address'
    create contract with 0 wei
                    code: code.data[487 len 4705], arg1, msg.sender
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_f81a7314[msg.sender] = address(create.new_address)
    return address(create.new_address)
}



}
