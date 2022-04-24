contract main {




// =====================  Runtime code  =====================


mapping of address tokensToExchange;

function tokensToExchange(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    return tokensToExchange[arg1][arg2][arg3]
}

function _fallback() payable {
    revert
}

function createExchange(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if tokensToExchange[address(arg1)][address(arg2)][arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 54, code.data[17807 len 54], mem[218 len 10]
    create contract with 0 wei
                    code: code.data[590 len 17217], address(arg1), address(arg2), arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    tokensToExchange[address(arg1)][address(arg2)][arg3] = address(create.new_address)
    emit NewExchange(address(create.new_address), arg1, arg2, arg3);
}



}
