contract main {




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    revert
}

function blocks(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor0.length
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536
}

function viewInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor0.length
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536
}

function sub_042fe61a(?) payable {
    stor0.length++
    stor0[stor0.length].field_0 = block.coinbase
    stor0[stor0.length].field_256 = block.difficulty
    stor0[stor0.length].field_512 = block.gas_limit
    stor0[stor0.length].field_768 = block.number
    stor0[stor0.length].field_1024 = block.timestamp
    stor0[stor0.length].field_1280 = block.gasprice
    stor0[stor0.length].field_1536 = eth.balance(msg.sender)
}



}
