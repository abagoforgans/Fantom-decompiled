contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702950;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702951;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702952;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702953;

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
    stor290D[stor0.length] = block.difficulty
    stor290D[stor0.length] = block.gas_limit
    stor290D[stor0.length] = block.number
    stor290D[stor0.length] = block.timestamp
    stor290D[stor0.length] = block.gasprice
    stor290D[stor0.length] = eth.balance(msg.sender)
}



}
