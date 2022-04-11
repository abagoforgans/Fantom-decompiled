contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of uint256 version;
mapping of address sub_21eac5f2;
array of struct tokens;
address owner;

function sub_21eac5f2(?) payable {
    require calldata.size - 4 >= 64
    return sub_21eac5f2[arg1][arg2]
}

function deposits(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1].field_0
}

function version() payable {
    return version[0 len version.length]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function getAllTokens() payable {
    if not tokens.length:
        mem[(32 * tokens.length) + 128] = 32
        mem[(32 * tokens.length) + 160] = tokens.length
        mem[(32 * tokens.length) + 192 len floor32(tokens.length)] = mem[128 len floor32(tokens.length)]
        return memory
          from (32 * tokens.length) + 128
           len (96 * tokens.length) + 64
    mem[128] = address(tokens.field_0)
    idx = 128
    s = 0
    while (32 * tokens.length) + 96 > idx:
        mem[idx + 32] = tokens[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokens.length) + 192 len floor32(tokens.length)] = mem[128 len floor32(tokens.length)]
    return Array(len=tokens.length, data=mem[128 len floor32(tokens.length)], mem[(32 * tokens.length) + floor32(tokens.length) + 192 len (32 * tokens.length) - floor32(tokens.length)]), 
}

function sub_df1b643f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'invalid sender; must be owner'
    if sub_21eac5f2[arg4][address(arg3)]:
        mem[ceil32(arg1.length) + 128] = sub_21eac5f2[arg4][address(arg3)]
    else:
        mem[ceil32(arg1.length) + 128 len 3964] = code.data[2347 len 3964]
        mem[ceil32(arg1.length) + 4284 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[arg1.length + ceil32(arg1.length) + 4284] = arg1.length
            mem[arg1.length + ceil32(arg1.length) + 4316 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                create contract with 0 wei
                                code: code.data[2347 len 3964], Array(len=arg4, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 4284 len (2 * arg1.length) + -ceil32(arg1.length) + 32]), arg1.length + 192, arg2 << 248, address(arg3)
            else:
                mem[floor32(arg1.length) + arg1.length + ceil32(arg1.length) + 4316] = mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 4348 len arg1.length % 32]
                create contract with 0 wei
                                code: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), code.data[arg1.length + -ceil32(arg1.length) + 2379 len -arg1.length + ceil32(arg1.length) + 3932], Array(len=address(arg3), data=arg4, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 4284 len floor32(arg1.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 192, arg2 << 248
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 4284] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 4316 len arg1.length % 32]
            mem[floor32(arg1.length) + ceil32(arg1.length) + 4316] = arg1.length
            mem[floor32(arg1.length) + ceil32(arg1.length) + 4348 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                create contract with 0 wei
                                code: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), code.data[arg1.length + -ceil32(arg1.length) + 2379 len -arg1.length + ceil32(arg1.length) + 3932], Array(len=address(arg3), data=arg4, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 4284 len floor32(arg1.length) + arg1.length + -ceil32(arg1.length) + 64]), floor32(arg1.length) + 224, arg2 << 248
            else:
                mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 4348] = mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + -(arg1.length % 32) + 4380 len arg1.length % 32]
                create contract with 0 wei
                                code: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), code.data[arg1.length + -ceil32(arg1.length) + 2379 len -arg1.length + ceil32(arg1.length) + 3932], Array(len=address(arg3), data=arg4, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 4284 len (2 * floor32(arg1.length)) + -ceil32(arg1.length) + 96]), floor32(arg1.length) + 224, arg2 << 248
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_21eac5f2[arg4][address(arg3)] = address(create.new_address)
        tokens.length++
        tokens[tokens.length].field_0 = address(create.new_address)
        mem[ceil32(arg1.length) + 128] = address(create.new_address)
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_3e87bb71(?) payable {
    require calldata.size - 4 >= 224
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'invalid sender; must be owner'
    if stor0[arg4]:
        revert with 0, 'already credited'
    if owner != msg.sender:
        revert with 0, 'invalid sender; must be owner'
    if sub_21eac5f2[arg7][address(arg2)]:
        mem[ceil32(arg5.length) + 128] = arg3
        mem[ceil32(arg5.length) + 160] = arg4
        emit Deposited(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length) + 32], arg1, arg2, sub_21eac5f2[arg7][address(arg2)]);
        stor0[arg4] = 1
        require ext_code.size(sub_21eac5f2[arg7][address(arg2)])
        call sub_21eac5f2[arg7][address(arg2)].mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), arg3
    else:
        mem[ceil32(arg5.length) + 128 len 3964] = code.data[2347 len 3964]
        mem[ceil32(arg5.length) + 4284 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            mem[arg5.length + ceil32(arg5.length) + 4284] = arg5.length
            mem[arg5.length + ceil32(arg5.length) + 4316 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
            if not arg5.length % 32:
                create contract with 0 wei
                                code: code.data[2347 len 3964], Array(len=arg7, data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + 4284 len (2 * arg5.length) + -ceil32(arg5.length) + 32]), arg5.length + 192, arg6 << 248, address(arg2)
            else:
                mem[floor32(arg5.length) + arg5.length + ceil32(arg5.length) + 4316] = mem[(2 * floor32(arg5.length)) + ceil32(arg5.length) + 4348 len arg5.length % 32]
                create contract with 0 wei
                                code: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), code.data[arg5.length + -ceil32(arg5.length) + 2379 len -arg5.length + ceil32(arg5.length) + 3932], Array(len=address(arg2), data=arg7, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + 4284 len floor32(arg5.length) + arg5.length + -ceil32(arg5.length) + 64]), arg5.length + 192, arg6 << 248
        else:
            mem[floor32(arg5.length) + ceil32(arg5.length) + 4284] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 4316 len arg5.length % 32]
            mem[floor32(arg5.length) + ceil32(arg5.length) + 4316] = arg5.length
            mem[floor32(arg5.length) + ceil32(arg5.length) + 4348 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
            if not arg5.length % 32:
                create contract with 0 wei
                                code: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), code.data[arg5.length + -ceil32(arg5.length) + 2379 len -arg5.length + ceil32(arg5.length) + 3932], Array(len=address(arg2), data=arg7, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + 4284 len floor32(arg5.length) + arg5.length + -ceil32(arg5.length) + 64]), floor32(arg5.length) + 224, arg6 << 248
            else:
                mem[(2 * floor32(arg5.length)) + ceil32(arg5.length) + 4348] = mem[(2 * floor32(arg5.length)) + ceil32(arg5.length) + -(arg5.length % 32) + 4380 len arg5.length % 32]
                create contract with 0 wei
                                code: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), code.data[arg5.length + -ceil32(arg5.length) + 2379 len -arg5.length + ceil32(arg5.length) + 3932], Array(len=address(arg2), data=arg7, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + 4284 len (2 * floor32(arg5.length)) + -ceil32(arg5.length) + 96]), floor32(arg5.length) + 224, arg6 << 248
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_21eac5f2[arg7][address(arg2)] = address(create.new_address)
        tokens.length++
        tokens[tokens.length].field_0 = address(create.new_address)
        mem[ceil32(arg5.length) + 128] = arg3
        mem[ceil32(arg5.length) + 160] = arg4
        emit Deposited(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length) + 32], arg1, arg2, address(create.new_address));
        stor0[arg4] = 1
        require ext_code.size(address(create.new_address))
        call address(create.new_address).mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
