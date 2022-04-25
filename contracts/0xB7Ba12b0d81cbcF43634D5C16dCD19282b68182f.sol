contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor102;
address stor103;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_0aeeca00(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor103)
    call stor103.0xaeeca00 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_267ab446(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor103)
    call stor103.0x267ab446 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a4066fbe(?) payable {
    require calldata.size - 4 >= 64
    if stor102 != msg.sender:
        revert with 0, 'caller is not the SFC contract'
    require ext_code.size(stor103)
    call stor103.0xa4066fbe with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_79bead38(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor103)
    call stor103.0x79bead38 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d6a0c7af(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor103)
    call stor103.0xd6a0c7af with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function migrateTo(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor103)
    call stor103.setBackend(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_fd1b6ec1(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        revert with 0, 'not a contract'
    if not ext_code.size(arg2):
        revert with 0, 'not a contract'
    require ext_code.size(stor103)
    call stor103.0xd6a0c7af with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b9cc6b1c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor103)
    call stor103.0xb9cc6b1c with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_242a6e3f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if stor102 != msg.sender:
        revert with 0, 'caller is not the SFC contract'
    require ext_code.size(stor103)
    call stor103.'$*n?' with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1e702f83(?) payable {
    require calldata.size - 4 >= 64
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7463616c6c6572206973206e6f7420746865204e6f646544726976657220636f6e74726163,
                    mem[201 len 27]
    require ext_code.size(stor102)
    call stor102.0x1e702f83 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_18f628d4(?) payable {
    require calldata.size - 4 >= 288
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7463616c6c6572206973206e6f7420746865204e6f646544726976657220636f6e74726163,
                    mem[201 len 27]
    require ext_code.size(stor102)
    call stor102.0x18f628d4 with:
         gas gas_remaining wei
        args 0, 0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e08d7e66(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7463616c6c6572206973206e6f7420746865204e6f646544726976657220636f6e74726163,
                    mem[201 len 27]
    require ext_code.size(stor102)
    call stor102.0xe08d7e66 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function incBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor102 != msg.sender:
        revert with 0, 'caller is not the SFC contract'
    if stor102 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64726563697069656e74206973206e6f74207468652053464320636f6e74726163,
                    mem[197 len 31]
    if arg2 + eth.balance(arg1) < eth.balance(arg1):
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(stor103)
    call stor103.setBalance(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2 + eth.balance(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4feb92f3(?) payable {
    require calldata.size - 4 >= 256
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7463616c6c6572206973206e6f7420746865204e6f646544726976657220636f6e74726163,
                    mem[201 len 27]
    mem[388 len arg2.length] = arg2[all]
    mem[arg2.length + 388] = 0
    require ext_code.size(stor102)
    call stor102.0x4feb92f3 with:
         gas gas_remaining wei
        args 0, 0, arg1, 256, arg3, arg4, arg5, arg6, arg7, arg2.length, arg2[all], mem[arg2.length + 388 len ceil32(arg2.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        owner = arg3
        emit OwnershipTransferred(0, arg3);
        stor103 = arg2
        stor102 = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = arg3
            emit OwnershipTransferred(0, arg3);
            stor103 = arg2
            stor102 = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = arg3
                emit OwnershipTransferred(0, arg3);
                stor103 = arg2
                stor102 = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                owner = arg3
                emit OwnershipTransferred(0, arg3);
                uint8(stor0.field_8) = 0
                stor103 = arg2
                stor102 = arg1
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
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7463616c6c6572206973206e6f7420746865204e6f646544726976657220636f6e74726163,
                    mem[201 len 27]
    mem[260 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 260] = 0
    mem[floor32(arg1.length) + 260] = arg2.length
    mem[floor32(arg1.length) + 292 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + floor32(arg1.length) + 292] = 0
    mem[floor32(arg1.length) + floor32(arg2.length) + 324 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 324] = 0
    mem[floor32(arg1.length) + floor32(arg2.length) + floor32(arg3.length) + 324] = arg4.length
    require ext_code.size(stor102)
    call stor102.0xebdf104c with:
         gas gas_remaining wei
        args 0, 128, floor32(arg1.length) + 160, floor32(arg1.length) + floor32(arg2.length) + 192, floor32(arg1.length) + floor32(arg2.length) + floor32(arg3.length) + 224, arg1.length, mem[260 len floor32(arg1.length) + 32], call.data[arg2 + 36 len floor32(arg2.length)], arg3.length, mem[floor32(arg1.length) + floor32(arg2.length) + 324 len floor32(arg3.length) + 32], call.data[arg4 + 36 len floor32(arg4.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
