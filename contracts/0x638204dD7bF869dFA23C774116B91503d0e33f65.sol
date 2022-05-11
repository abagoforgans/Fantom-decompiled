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

function sub_0311949d(?) payable {
    require calldata.size - 4 >= 96
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
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 192] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg2.length
    if nFTGemPool[mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]]]:
        revert with 0, 'GEMPOOL_EXISTS'
    nFTGemPool[mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]]] = address(arg1)
    allNFTGemPools.length++
    allNFTGemPools[allNFTGemPools.length].field_0 = address(arg1)
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 64
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 256] = arg2.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[(2 * arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288] = 0
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 224] = ceil32(arg2.length) + 96
    mem[(2 * ceil32(arg2.length)) + arg2.length + ceil32(arg3.length) + 288] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[(2 * ceil32(arg2.length)) + arg2.length + ceil32(arg3.length) + 320 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        mem[(2 * ceil32(arg2.length)) + arg2.length + ceil32(arg3.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 320] = 0
    emit 0x88b481e2: mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 128], address(arg1)
    return address(arg1)
}

function sub_e4aa923d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg1.length + arg1 + 36
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307() or ceil32(arg2.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[ceil32(arg1.length) + 128] = arg2.length
    require calldata.size >= arg2.length + arg2 + 36
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 > test266151307() or ceil32(arg3.length) + 192 < 160:
        revert with 'NH{q', 65
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    require calldata.size >= arg3.length + arg3 + 36
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg2.length
    if nFTGemPool[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]]:
        revert with 0, 'GEMPOOL_EXISTS'
    if eth.balance(this.address) < 0:
        revert with 0, 'Create2: insufficient balance'
    if not arg1.length:
        revert with 0, 'Create2: bytecode length is zero'
    create2 contract with 0 wei
                    salt: sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])
                    code: arg1[all]
    if not address(create2.new_address):
        revert with 0, 'Create2: Failed on deploy'
    nFTGemPool[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]] = address(create2.new_address)
    allNFTGemPools.length++
    allNFTGemPools[allNFTGemPools.length].field_0 = address(create2.new_address)
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = 64
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 320] = 0
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 96
    mem[ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]:
        mem[ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] + 352] = 0
    emit 0x88b481e2: mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 128], address(create2.new_address)
    return address(create2.new_address)
}

function sub_4ff8f07e(?) payable {
    require calldata.size - 4 >= 256
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307() or ceil32(arg2.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[ceil32(arg1.length) + 128] = arg2.length
    require calldata.size >= arg2.length + arg2 + 36
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg8 == address(arg8)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) <= arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg1.length
        _233 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
        if nFTGemPool[mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]]:
            revert with 0, 'GEMPOOL_EXISTS'
        if not arg3:
            revert with 0, 'INVALID_PRICE'
        if not arg4:
            revert with 0, 'INVALID_MIN_TIME'
        if not arg6:
            revert with 0, 'INVALID_DIFFICULTY_STEP'
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 224 len 17329] = code.data[3151 len 17329]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 17329
        if eth.balance(this.address) < 0:
            revert with 0, 'Create2: insufficient balance'
        create2 contract with 0 wei
                        salt: _233
                        code: code.data[3151 len 17329]
        if not address(create2.new_address):
            revert with 0, 'Create2: Failed on deploy'
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584)] = 0xd9a3f9bb00000000000000000000000000000000000000000000000000000000
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 4] = 256
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 260] = arg1.length
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 292 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if ceil32(arg1.length) > arg1.length:
            mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + arg1.length + 292] = 0
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 36] = ceil32(arg1.length) + 288
        mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 292] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 324 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 324] = 0
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 68] = arg3
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 100] = arg4
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 132] = arg5
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 164] = arg6
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 196] = arg7
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 228] = address(arg8)
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0xd9a3f9bb with:
             gas gas_remaining wei
            args mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 4 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        nFTGemPool[_233] = address(create2.new_address)
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 192] = 0
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg1.length
        _238 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
        if nFTGemPool[mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]]:
            revert with 0, 'GEMPOOL_EXISTS'
        if not arg3:
            revert with 0, 'INVALID_PRICE'
        if not arg4:
            revert with 0, 'INVALID_MIN_TIME'
        if not arg6:
            revert with 0, 'INVALID_DIFFICULTY_STEP'
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 224 len 17329] = code.data[3151 len 17329]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 17329
        if eth.balance(this.address) < 0:
            revert with 0, 'Create2: insufficient balance'
        create2 contract with 0 wei
                        salt: _238
                        code: code.data[3151 len 17329]
        if not address(create2.new_address):
            revert with 0, 'Create2: Failed on deploy'
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584)] = 0xd9a3f9bb00000000000000000000000000000000000000000000000000000000
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 4] = 256
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 260] = arg1.length
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 292 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if ceil32(arg1.length) > arg1.length:
            mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + arg1.length + 292] = 0
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 36] = ceil32(arg1.length) + 288
        mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 292] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 324 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 324] = 0
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 68] = arg3
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 100] = arg4
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 132] = arg5
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 164] = arg6
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 196] = arg7
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 228] = address(arg8)
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).0xd9a3f9bb with:
             gas gas_remaining wei
            args mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 4 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        nFTGemPool[_238] = address(create2.new_address)
    allNFTGemPools.length++
    allNFTGemPools[allNFTGemPools.length].field_0 = address(create2.new_address)
    mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584)] = 256
    mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 256] = arg1.length
    mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + arg1.length + 288] = 0
    mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 32] = ceil32(arg1.length) + 288
    mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 288] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 320 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[ceil32(arg1.length) + floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 320] = 0
    mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 64] = arg3
    mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 96] = arg4
    mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 128] = arg5
    mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 160] = arg6
    mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 192] = arg7
    mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) + 224] = address(arg8)
    emit 0x39edc680: mem[floor32(arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 17584) len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 320], address(create2.new_address)
    return address(create2.new_address)
}



}
