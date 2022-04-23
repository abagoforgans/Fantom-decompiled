contract main {




// =====================  Runtime code  =====================


address mainDappAddr;
mapping of address indexToCaller;
uint256 callerIndex;

function callerIndex() payable {
    return callerIndex
}

function mainDappAddr() payable {
    return mainDappAddr
}

function indexToCaller(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(indexToCaller[arg1])
}

function _fallback() payable {
    revert
}

function sub_68ea95a8(?) payable {
    require ext_code.size(mainDappAddr)
    staticcall mainDappAddr.presales(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 448
    return bool(ext_call.return_data[0]), 
           ext_call.return_data[32],
           address(ext_call.return_data[64]),
           address(ext_call.return_data[96]),
           address(ext_call.return_data[128]),
           address(ext_call.return_data[160]),
           bool(ext_call.return_data[192]),
           ext_call.return_data[224],
           ext_call.return_data[256],
           ext_call.return_data[288],
           address(ext_call.return_data[320]),
           ext_call.return_data[352],
           ext_call.return_data[384],
           ext_call.return_data[416]
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
    uint256(indexToCaller[stor2]) = msg.sender or Mask(96, 160, uint256(indexToCaller[stor2]))
    callerIndex++
}



}
