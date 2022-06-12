contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function generate(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 5
    create contract with 0 wei
                    code: code.data[194 len 498], address(arg1), arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
}



}
