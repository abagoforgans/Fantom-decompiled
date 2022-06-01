contract main {




// =====================  Runtime code  =====================


const sub_bddafe76(?) = 0x8d45f1496bf8a5f291dde3b40ac83a950a27a055


uint256 rate;

function rate() payable {
    return rate
}

function _fallback() payable {
    revert
}

function sub_08ffcca4(?) payable {
    require ext_code.size(0x8d45f1496bf8a5f291dde3b40ac83a950a27a055)
    staticcall 0x8d45f1496bf8a5f291dde3b40ac83a950a27a055.exchangeRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    rate = ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
