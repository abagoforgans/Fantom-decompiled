contract main {




// =====================  Runtime code  =====================


mapping of address nFTGemPool;
array of struct allNFTGemPools;

function allNFTGemPools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= allNFTGemPools.length:
        revert with 'NH{q', 50
    return allNFTGemPools[arg1].field_0
}

function allNFTGemPoolsLength() payable {
    return allNFTGemPools.length
}

function getNFTGemPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return nFTGemPool[arg1]
}

function _fallback() payable {
    revert
}

function sub_2b69fa10(?) payable {
    mem[64] = (32 * allNFTGemPools.length) + 128
    mem[96] = allNFTGemPools.length
    if not allNFTGemPools.length:
        mem[(32 * allNFTGemPools.length) + 128] = 32
        mem[(32 * allNFTGemPools.length) + 160] = allNFTGemPools.length
        idx = 0
        s = (32 * allNFTGemPools.length) + 192
        t = 128
        while idx < allNFTGemPools.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * allNFTGemPools.length) + 128
           len (96 * allNFTGemPools.length) + 64
    mem[128] = address(allNFTGemPools.field_0)
    idx = 128
    s = 0
    while (32 * allNFTGemPools.length) + 96 > idx:
        mem[idx + 32] = allNFTGemPools[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allNFTGemPools.length) + 128] = 32
    mem[(32 * allNFTGemPools.length) + 160] = allNFTGemPools.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < allNFTGemPools.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * allNFTGemPools.length) + -mem[64] + 192
}

function sub_8514d358(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + ceil32(arg3.length) + 160 > test266151307() or ceil32(arg3.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[ceil32(arg2.length) + 128] = arg3.length
    require calldata.size >= arg3.length + arg3 + 36
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    require arg9 == address(arg9)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) <= arg2.length:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg2.length
        _237 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
        if nFTGemPool[mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]]]:
            revert with 0, 'GEMPOOL_EXISTS'
        if not arg4:
            revert with 0, 'INVALID_PRICE'
        if not arg5:
            revert with 0, 'INVALID_MIN_TIME'
        if not arg7:
            revert with 0, 'INVALID_DIFFICULTY_STEP'
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 224 len 20437] = code.data[2408 len 20437]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 20437
        if eth.balance(this.address) < 0:
            revert with 0, 'Create2: insufficient balance'
        create2 contract with 0 wei
                        salt: _237
                        code: code.data[2408 len 20437]
        if not address(create2.new_address):
            revert with 0, 'Create2: Failed on deploy'
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0xa7fc7a07 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692)] = 0xd9a3f9bb00000000000000000000000000000000000000000000000000000000
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 4] = 256
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 260] = arg2.length
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 292 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + arg2.length + 292] = 0
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 36] = ceil32(arg2.length) + 288
        mem[ceil32(arg2.length) + floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 292] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 324 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
            mem[ceil32(arg2.length) + floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 324] = 0
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 68] = arg4
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 100] = arg5
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 132] = arg6
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 164] = arg7
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 196] = arg8
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 228] = address(arg9)
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0xd9a3f9bb with:
             gas gas_remaining wei
            args mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 4 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        nFTGemPool[_237] = address(create2.new_address)
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 192] = 0
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg2.length
        _242 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
        if nFTGemPool[mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]]]:
            revert with 0, 'GEMPOOL_EXISTS'
        if not arg4:
            revert with 0, 'INVALID_PRICE'
        if not arg5:
            revert with 0, 'INVALID_MIN_TIME'
        if not arg7:
            revert with 0, 'INVALID_DIFFICULTY_STEP'
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 224 len 20437] = code.data[2408 len 20437]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 20437
        if eth.balance(this.address) < 0:
            revert with 0, 'Create2: insufficient balance'
        create2 contract with 0 wei
                        salt: _242
                        code: code.data[2408 len 20437]
        if not address(create2.new_address):
            revert with 0, 'Create2: Failed on deploy'
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0xa7fc7a07 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692)] = 0xd9a3f9bb00000000000000000000000000000000000000000000000000000000
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 4] = 256
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 260] = arg2.length
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 292 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + arg2.length + 292] = 0
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 36] = ceil32(arg2.length) + 288
        mem[ceil32(arg2.length) + floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 292] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 324 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
            mem[ceil32(arg2.length) + floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 324] = 0
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 68] = arg4
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 100] = arg5
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 132] = arg6
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 164] = arg7
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 196] = arg8
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 228] = address(arg9)
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0xd9a3f9bb with:
             gas gas_remaining wei
            args mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 4 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        nFTGemPool[_242] = address(create2.new_address)
    allNFTGemPools.length++
    allNFTGemPools[allNFTGemPools.length].field_0 = address(create2.new_address)
    mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692)] = 256
    mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 256] = arg2.length
    mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + arg2.length + 288] = 0
    mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 32] = ceil32(arg2.length) + 288
    mem[ceil32(arg2.length) + floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 288] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 320 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        mem[ceil32(arg2.length) + floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 320] = 0
    mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 64] = arg4
    mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 96] = arg5
    mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 128] = arg6
    mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 160] = arg7
    mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 192] = arg8
    mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) + 224] = address(arg9)
    emit 0x39edc680: mem[floor32(arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 20692) len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 320], address(create2.new_address)
    return address(create2.new_address)
}



}
