contract main {




// =====================  Runtime code  =====================


const REVISION = 1


uint256 stor0;
mapping of address aggregatorsOfAssets;

function aggregatorsOfAssets(address arg1) payable {
    require calldata.size - 4 >= 32
    return aggregatorsOfAssets[arg1]
}

function _fallback() payable {
    revert
}

function isManager(address arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 == 0x315701bd76758a7d893bbe7402ff1c4a9b9f72f5)
}

function initialize() payable {
    if 1 <= stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                    mem[210 len 18]
    stor0 = 1
}

function updateAggregators(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if 0x315701bd76758a7d893bbe7402ff1c4a9b9f72f5 != msg.sender:
        revert with 0, 'INVALID_MANAGER'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 51
        aggregatorsOfAssets[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        require idx < arg1.length
        require idx < arg2.length
        _26 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = address(_26)
        emit AggregatorUpdated(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_26));
        idx = idx + 1
        continue 
}



}
