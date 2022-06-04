contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address stor52;
address stor53;

function _fallback() payable {
    revert
}

function sub_0aeeca00(?) payable {
    require calldata.size - 4 >= 32
    if stor52 != msg.sender:
        revert with 0, 'caller is not the backend'
    emit 0x151256d6: arg1
}

function sub_267ab446(?) payable {
    require calldata.size - 4 >= 32
    if stor52 != msg.sender:
        revert with 0, 'caller is not the backend'
    emit 0x2ccdfd47: arg1
}

function sub_a4066fbe(?) payable {
    require calldata.size - 4 >= 64
    if stor52 != msg.sender:
        revert with 0, 'caller is not the backend'
    emit 0xb9758075: arg2, arg1
}

function setBackend(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor52 != msg.sender:
        revert with 0, 'caller is not the backend'
    emit 0x64ee8f7b: arg1
    stor52 = arg1
}

function sub_1e702f83(?) payable {
    require calldata.size - 4 >= 64
    if msg.sender:
        revert with 0, 'not callable'
    require ext_code.size(stor52)
    call stor52.0x1e702f83 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b9cc6b1c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if stor52 != msg.sender:
        revert with 0, 'caller is not the backend'
    emit 0x47d10eed: Array(len=arg1.length, data=arg1[all])
}

function sub_242a6e3f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if stor52 != msg.sender:
        revert with 0, 'caller is not the backend'
    emit 0xf0ef1ab9: Array(len=arg2.length, data=arg2[all]), arg1
}

function sub_07690b2a(?) payable {
    require calldata.size - 4 >= 64
    if stor52 != msg.sender:
        revert with 0, 'caller is not the backend'
    require ext_code.size(stor53)
    call stor53.0x7690b2a with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_79bead38(?) payable {
    require calldata.size - 4 >= 64
    if stor52 != msg.sender:
        revert with 0, 'caller is not the backend'
    require ext_code.size(stor53)
    call stor53.0x79bead38 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d6a0c7af(?) payable {
    require calldata.size - 4 >= 64
    if stor52 != msg.sender:
        revert with 0, 'caller is not the backend'
    require ext_code.size(stor53)
    call stor53.0xd6a0c7af with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_18f628d4(?) payable {
    require calldata.size - 4 >= 288
    if msg.sender:
        revert with 0, 'not callable'
    require ext_code.size(stor52)
    call stor52.0x18f628d4 with:
         gas gas_remaining wei
        args 0, 0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor52 != msg.sender:
        revert with 0, 'caller is not the backend'
    require ext_code.size(stor53)
    call stor53.0xe30443bc with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setStorage(address arg1, bytes32 arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    if stor52 != msg.sender:
        revert with 0, 'caller is not the backend'
    require ext_code.size(stor53)
    call stor53.0x39e503ab with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e08d7e66(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if msg.sender:
        revert with 0, 'not callable'
    require ext_code.size(stor52)
    call stor52.0xe08d7e66 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4feb92f3(?) payable {
    require calldata.size - 4 >= 256
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if msg.sender:
        revert with 0, 'not callable'
    mem[388 len arg2.length] = arg2[all]
    mem[arg2.length + 388] = 0
    require ext_code.size(stor52)
    call stor52.0x4feb92f3 with:
         gas gas_remaining wei
        args 0, 0, arg1, 256, arg3, arg4, arg5, arg6, arg7, arg2.length, arg2[all], mem[arg2.length + 388 len ceil32(arg2.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        stor52 = arg1
        emit 0x64ee8f7b: arg1
        stor53 = arg2
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            stor52 = arg1
            emit 0x64ee8f7b: arg1
            stor53 = arg2
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            stor52 = arg1
            emit 0x64ee8f7b: arg1
            stor53 = arg2
            uint8(stor0.field_8) = 0
}

function sub_ebdf104c(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    if msg.sender:
        revert with 0, 'not callable'
    mem[260 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 260] = 0
    mem[floor32(arg1.length) + 260] = arg2.length
    mem[floor32(arg1.length) + 292 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + floor32(arg1.length) + 292] = 0
    mem[floor32(arg1.length) + floor32(arg2.length) + 324 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 324] = 0
    mem[floor32(arg1.length) + floor32(arg2.length) + floor32(arg3.length) + 324] = arg4.length
    require ext_code.size(stor52)
    call stor52.0xebdf104c with:
         gas gas_remaining wei
        args 0, 128, floor32(arg1.length) + 160, floor32(arg1.length) + floor32(arg2.length) + 192, floor32(arg1.length) + floor32(arg2.length) + floor32(arg3.length) + 224, arg1.length, mem[260 len floor32(arg1.length) + 32], call.data[arg2 + 36 len floor32(arg2.length)], arg3.length, mem[floor32(arg1.length) + floor32(arg2.length) + 324 len floor32(arg3.length) + 32], call.data[arg4 + 36 len floor32(arg4.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
