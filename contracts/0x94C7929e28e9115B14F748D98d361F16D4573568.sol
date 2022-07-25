contract main {




// =====================  Runtime code  =====================


address tokenAddress;
mapping of uint256 balances;
array of address list;

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function list(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < list.length
    return list[arg1]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function Process() payable {
    idx = 0
    while idx < list.length:
        mem[0] = list[idx]
        mem[32] = 1
        mem[100] = list[idx]
        mem[132] = balances[stor2[idx]]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args list[idx], balances[stor2[idx]]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
