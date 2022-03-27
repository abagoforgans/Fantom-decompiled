contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_d294ed28(?) {
    require calldata.size - 4 >= 64
    return (arg1 == stor0)
}

function sub_f3f4ef79(?) {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    return 1
}

function sub_371f3122(?) payable {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[320 len arg1.length] = arg1[all]
    mem[arg1.length + 320] = 0
    mem[ceil32(arg1.length) + 320] = arg2.length
    mem[ceil32(arg1.length) + 352 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 352] = 0
    mem[64] = (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384 len 5431] = code.data[1978 len 5431]
    mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5911] = arg4
    mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5943] = arg5
    mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5975] = arg6
    mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6007] = arg7
    mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6039] = arg8
    mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6071] = 0
    mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5815] = 288
    mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6103] = arg1.length
    mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6135 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 320 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5847] = arg1.length + 320
        mem[arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6135] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6167 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 352 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] % 32:
            mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5879] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] + arg1.length + 352
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] + arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6167] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)]
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] + arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6199 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)])]
            create contract with 0 wei
                            code: mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384 len (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)]) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] + arg1.length + 5815]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]) + arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6167] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]) + arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] % 32) + 6199 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] % 32]
            mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5879] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 384
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]) + arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6199] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)]
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]) + arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6231 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)])]
            create contract with 0 wei
                            code: mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384 len (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)]) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 5847]
    else:
        mem[floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6135] = mem[floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 6167 len arg1.length % 32]
        mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5847] = floor32(arg1.length) + 352
        mem[floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6167] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6199 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 352 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] % 32:
            mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5879] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 384
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6199] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)]
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6231 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)])]
            create contract with 0 wei
                            code: mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384 len (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)]) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 5847]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6199] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] % 32) + 6231 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)] % 32]
            mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5879] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 416
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6231] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)]
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6263 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)])]
            create contract with 0 wei
                            code: mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384 len (32 * Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 384 len -arg2.length + ceil32(arg2.length)]) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 352 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 5879]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).transferOwnership(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = address(create.new_address)
    require ext_code.size(stor1)
    call stor1.createProposal(address rg1) with:
       value msg.value wei
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 0
}



}
