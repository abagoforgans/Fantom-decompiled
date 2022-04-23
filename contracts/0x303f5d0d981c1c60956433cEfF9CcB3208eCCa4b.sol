contract main {




// =====================  Runtime code  =====================


address mainDappAddr;
mapping of uint256 presaleOwnerToIndex;
uint256 stor2;

function presaleOwnerToIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    return presaleOwnerToIndex[arg1]
}

function mainDappAddr() payable {
    return mainDappAddr
}

function _fallback() payable {
    revert
}

function voterCallsFinalizeRefundMainDapp() payable {
    call mainDappAddr.voterCallsFinalizeRefund(address rg1) with:
         gas gas_remaining wei
        args Mask(224, 32, msg.sender) >> 32, mem[196 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        47,
                        0xfe70726573616c654f776e657220456d657267656e63792046696e616c697a6174696f6e2063616c6c206661696c65,
                        mem[279 len 17]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        47,
                        0xfe70726573616c654f776e657220456d657267656e63792046696e616c697a6174696f6e2063616c6c206661696c65,
                        mem[ceil32(return_data.size) + 280 len 17]
    ('bool', 'ext_call.success')
    presaleOwnerToIndex[msg.sender] = stor2
}



}
