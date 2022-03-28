contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address owner;
address oracleAddress;

function oracle() payable {
    return oracleAddress
}

function owner() payable {
    return owner
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setNewToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    tokenAddress = arg1
}

function setNewOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    oracleAddress = arg1
}

function getPrice() payable {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPrice(address rg1) with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
