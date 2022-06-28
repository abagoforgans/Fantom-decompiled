contract main {




// =====================  Runtime code  =====================


const getTimestamp = block.timestamp

const getBlockNumber = block.number


function _fallback() payable {
    revert
}



}
