contract main {




// =====================  Runtime code  =====================


address owner;
array of address tokenContract;

function sub_25278a5b(?) payable {
    return tokenContract.length
}

function tokenContractAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenContract.length
    return tokenContract[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_ed61ba6e(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 128 len 2262] = code.data[1165 len 2262]
    mem[ceil32(arg3.length) + 2550 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), code.data[arg3.length + -ceil32(arg3.length) + 1197 len -arg3.length + ceil32(arg3.length) + 2230], msg.sender, arg1, arg2, 128, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 2550] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 2582 len arg3.length % 32]
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), code.data[arg3.length + -ceil32(arg3.length) + 1197 len -arg3.length + ceil32(arg3.length) + 2230], msg.sender, arg1, arg2, 128, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 2550 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    tokenContract.length++
    tokenContract[tokenContract.length] = address(create.new_address)
    mem[ceil32(arg3.length) + 128] = msg.sender
    mem[ceil32(arg3.length) + 160] = 'created'
    emit 0x1dcfaba9: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length) + 32]
    mem[ceil32(arg3.length) + 128] = address(create.new_address)
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}



}
