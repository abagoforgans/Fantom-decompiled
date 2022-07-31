contract main {




// =====================  Runtime code  =====================


address owner;
address gasTokenAddress;
address liqAddress;
address sub_27ec4eb0Address;
address aaveAddress;

function sub_27ec4eb0(?) {
    return sub_27ec4eb0Address
}

function aave() {
    return aaveAddress
}

function owner() {
    return owner
}

function gasToken() {
    return gasTokenAddress
}

function liq() {
    return liqAddress
}

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_05bda3a6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    liqAddress = arg1
}

function sub_c5fd3ae4(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    aaveAddress = arg1
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function sub_c9fcd230(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_27ec4eb0Address = arg1
}

function updateToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    gasTokenAddress = arg1
}

function collectEth() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e35a25b2(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    call arg1 with:
       value arg3 wei
         gas gas_remaining wei
        args arg2[all]
}

function sub_33112eed(?) {
    require calldata.size - 4 >= 288
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require ext_code.size(aaveAddress)
    call aaveAddress.0xe63023cc with:
         gas gas_remaining wei
        args 0, arg1, address(arg2), call.data[68 len 96], 288, address(arg4), address(arg5), arg6, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(gasTokenAddress)
    call gasTokenAddress.0x6366b936 with:
         gas gas_remaining wei
        args ((16 * calldata.size) + 35505 / 19908)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_5537b516(?) {
    require calldata.size - 4 >= 288
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require ext_code.size(aaveAddress)
    call aaveAddress.0xe4d92584 with:
         gas gas_remaining wei
        args 0, arg1, address(arg2), call.data[68 len 96], 288, address(arg4), address(arg5), arg6, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(gasTokenAddress)
    call gasTokenAddress.0x6366b936 with:
         gas gas_remaining wei
        args ((16 * calldata.size) + 35505 / 19908)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_1ae0d31c(?) {
    require calldata.size - 4 >= 288
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require ext_code.size(liqAddress)
    call liqAddress.0x1ae0d31c with:
         gas gas_remaining wei
        args 0, arg1, address(arg2), call.data[68 len 64], 288, address(arg4), address(arg5), address(arg6), arg7, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(gasTokenAddress)
    call gasTokenAddress.0x6366b936 with:
         gas gas_remaining wei
        args ((16 * calldata.size) + 35505 / 19908)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_aa330671(?) {
    require calldata.size - 4 >= 256
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require ext_code.size(sub_27ec4eb0Address)
    call sub_27ec4eb0Address.0xaa330671 with:
         gas gas_remaining wei
        args 0, arg1, address(arg2), call.data[68 len 64], address(arg3), 256, address(arg5), arg6, arg4.length, call.data[arg4 + 36 len floor32(arg4.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(gasTokenAddress)
    call gasTokenAddress.0x6366b936 with:
         gas gas_remaining wei
        args ((16 * calldata.size) + 35505 / 19908)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_027d6f56(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = owner
        mem[132] = ext_call.return_data[0]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
