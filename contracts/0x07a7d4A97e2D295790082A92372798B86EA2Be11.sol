contract main {




// =====================  Runtime code  =====================


const blockNumber = block.number

const blockTimestamp = block.timestamp


function _fallback() payable {
    revert
}



}
