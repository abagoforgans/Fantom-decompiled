contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_06628369(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor0)
    staticcall stor0 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[12 len 20]
    emit 0xcd485791: 0, Mask(8 * -ceil32(arg1.length) + arg1.length + 28, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}



}
