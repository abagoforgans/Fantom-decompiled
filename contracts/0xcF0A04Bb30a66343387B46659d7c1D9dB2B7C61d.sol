contract main {




// =====================  Runtime code  =====================


#
#  - mixGenes(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#
const isGeneScience = 1


function _fallback() payable {
    revert
}

function _decode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[1632 len 1536] = call.data[calldata.size len 1536]
    idx = 0
    while idx < 48:
        mem[(32 * idx) + 1632] = uint8(Mask(256, -5 * idx, arg1 and 31 << 5 * idx) >> 5 * idx)
        idx = idx + 1
        continue 
    return memory
      from 1632
       len 1536
}



}
