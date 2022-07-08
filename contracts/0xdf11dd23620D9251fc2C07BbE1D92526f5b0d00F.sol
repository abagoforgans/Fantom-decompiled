contract main {




// =====================  Runtime code  =====================


#
#  - sub_1b34a86e(?)
#
uint8 stor0;
uint256 stor1;
array of address stor2;
uint256 stor3;
uint256 stor4;
mapping of uint8 stor5;

function sub_044ec7ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[address(arg1)])
}

function _fallback() payable {
  stop
}

function sub_855ec0ef(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    stor1 = arg1
}

function sub_ea85c736(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < arg1:
        mem[96 len 195] = code.data[11189 len 195]
        create contract with 0 wei
                        code: code.data[11189 len 195]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        stor2.length++
        mem[0] = 2
        stor2[stor2.length] = address(create.new_address)
        stor4++
        idx = idx + 1
        continue 
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_8dbe9b22(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor5[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        idx = idx + 1
        continue 
}

function sub_a2763cac(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor5[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_525aa434(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor0:
        revert with 0, 'CONTRACT_NOT_CONFIGURATED'
    if stor1 <= 0:
        revert with 0, 'NULL_MIN_PROFIT'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        if not stor5[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 'WRONG_OWNER'
        idx = idx + 1
        continue 
    return 1
}

function sub_1c61069c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor5[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    if address(arg1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call msg.sender with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0ef5eb0e(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    if not stor5[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
    stor1 = cd[36]
    if stor0:
        if cd[68] > 0:
            idx = 0
            while idx < cd[68]:
                mem[96 len 195] = code.data[11189 len 195]
                create contract with 0 wei
                                code: code.data[11189 len 195]
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                stor2.length++
                mem[0] = 2
                stor2[stor2.length] = address(create.new_address)
                stor4++
                idx = idx + 1
                continue 
    stor0 = 0
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[0] = arg1
    mem[32] = 5
    if not stor5[address(arg1)]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    if msg.sender != 0xd528697008ac67a21818751a5e3c58c8dae54696:
        revert with 0, 'ERR_NOT_ALLOWED_SENDER'
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 > ext_call.return_data[0]:
        revert with 0, '10'
    mem[ceil32(return_data.size) + 96] = 96
    mem[ceil32(return_data.size) + 128] = 96
    mem[ceil32(return_data.size) + 160] = 96
    mem[ceil32(return_data.size) + 192] = 0
    require arg5.length >= 32
    require cd[(arg5 + 36)] <= test266151307()
    require arg5.length - cd[(arg5 + 36)] >= 128
    require bool(ceil32(return_data.size) + 352 <= test266151307())
    require cd[(arg5 + cd[(arg5 + 36)] + 36)] <= test266151307()
    require arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 384 >= 352 and ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 384 <= test266151307()
    mem[ceil32(return_data.size) + 352] = cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]
    require cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 68
    t = ceil32(return_data.size) + 384
    while idx < cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 224] = ceil32(return_data.size) + 352
    require cd[(arg5 + cd[(arg5 + 36)] + 68)] <= test266151307()
    require arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)] <= test266151307()
    require (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + 416 >= 384 and ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + 416 <= test266151307()
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 384] = cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]
    require cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 68
    t = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 416
    while idx < cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 256] = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 384
    require cd[(arg5 + cd[(arg5 + 36)] + 100)] <= test266151307()
    require arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)] <= test266151307()
    require (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]) + 448 >= 416 and ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]) + 448 <= test266151307()
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + 416] = cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]
    require cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 68
    t = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + 448
    while idx < cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 288] = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + 416
    require cd[(arg5 + cd[(arg5 + 36)] + 132)] == cd[(arg5 + cd[(arg5 + 36)] + 132)]
    mem[ceil32(return_data.size) + 320] = cd[(arg5 + cd[(arg5 + 36)] + 132)]
    require cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]
    require 0 < cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]) + 452] = mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + 460 len 20]
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]) + 484] = cd[(arg5 + cd[(arg5 + 36)] + 132)]
    require ext_code.size(mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 428 len 20])
    call mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 428 len 20].0xa9059cbb with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]) + 452], cd[(arg5 + cd[(arg5 + 36)] + 132)]
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]) + 448] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]) + 448
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = cd[(arg5 + cd[(arg5 + 36)] + 132)]
    while idx < cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]:
        require idx < mem[mem[ceil32(return_data.size) + 224]]
        _302 = mem[(32 * idx) + mem[ceil32(return_data.size) + 224] + 32]
        require idx < mem[mem[ceil32(return_data.size) + 256]]
        _306 = mem[(32 * idx) + mem[ceil32(return_data.size) + 256] + 32]
        require idx + 1 < mem[mem[ceil32(return_data.size) + 256]]
        _309 = mem[(32 * idx + 1) + mem[ceil32(return_data.size) + 256] + 32]
        require idx < mem[mem[ceil32(return_data.size) + 288]]
        _312 = mem[(32 * idx) + mem[ceil32(return_data.size) + 288] + 32]
        require idx + 1 < mem[mem[ceil32(return_data.size) + 288]]
        _315 = mem[(32 * idx + 1) + mem[ceil32(return_data.size) + 288] + 32]
        require ext_code.size(mem[(32 * idx) + mem[ceil32(return_data.size) + 288] + 44 len 20])
        staticcall mem[(32 * idx) + mem[ceil32(return_data.size) + 288] + 44 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[(32 * idx) + mem[ceil32(return_data.size) + 256] + 44 len 20] < mem[(32 * idx + 1) + mem[ceil32(return_data.size) + 256] + 44 len 20]:
            _321 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _325 = mem[_321]
            require mem[_321] == mem[_321 + 18 len 14]
            _328 = mem[_321 + 32]
            require mem[_321 + 32] == mem[_321 + 50 len 14]
            require mem[_321 + 64] == mem[_321 + 92 len 4]
            if address(_306) == address(_306):
                _334 = mem[64]
                mem[64] = mem[64] + 32
                mem[_334 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_334 + 36] = 0
                mem[_334 + 68] = Mask(112, 0, _328) * s * _302 / (s * _302) + (1000 * Mask(112, 0, _325))
                mem[_334 + 100] = address(_315)
                mem[_334 + 132] = 128
                mem[_334 + 164] = mem[_334]
                t = 0
                while t < mem[_334]:
                    mem[t + _334 + 196] = mem[t + _334 + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_334]) > mem[_334]:
                    mem[_334 + mem[_334] + 196] = 0
                require ext_code.size(address(_312))
                call address(_312).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, Mask(112, 0, _328) * s * _302 / (s * _302) + (1000 * Mask(112, 0, _325)), address(_315), 128, mem[_334], mem[_334 + 196 len ceil32(mem[_334])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = Mask(112, 0, _328) * s * _302 / (s * _302) + (1000 * Mask(112, 0, _325))
                continue 
            _335 = mem[64]
            mem[64] = mem[64] + 32
            mem[_335 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_335 + 36] = Mask(112, 0, _325) * s * _302 / (s * _302) + (1000 * Mask(112, 0, _328))
            mem[_335 + 68] = 0
            mem[_335 + 100] = address(_315)
            mem[_335 + 132] = 128
            mem[_335 + 164] = mem[_335]
            t = 0
            while t < mem[_335]:
                mem[t + _335 + 196] = mem[t + _335 + 32]
                t = t + 32
                continue 
            if ceil32(mem[_335]) > mem[_335]:
                mem[_335 + mem[_335] + 196] = 0
            require ext_code.size(address(_312))
            call address(_312).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args Mask(112, 0, _325) * s * _302 / (s * _302) + (1000 * Mask(112, 0, _328)), 0, address(_315), 128, mem[_335], mem[_335 + 196 len ceil32(mem[_335])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = Mask(112, 0, _325) * s * _302 / (s * _302) + (1000 * Mask(112, 0, _328))
            continue 
        _322 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _326 = mem[_322]
        require mem[_322] == mem[_322 + 18 len 14]
        _329 = mem[_322 + 32]
        require mem[_322 + 32] == mem[_322 + 50 len 14]
        require mem[_322 + 64] == mem[_322 + 92 len 4]
        if address(_306) == address(_309):
            _336 = mem[64]
            mem[64] = mem[64] + 32
            mem[_336 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_336 + 36] = 0
            mem[_336 + 68] = Mask(112, 0, _329) * s * _302 / (s * _302) + (1000 * Mask(112, 0, _326))
            mem[_336 + 100] = address(_315)
            mem[_336 + 132] = 128
            mem[_336 + 164] = mem[_336]
            t = 0
            while t < mem[_336]:
                mem[t + _336 + 196] = mem[t + _336 + 32]
                t = t + 32
                continue 
            if ceil32(mem[_336]) > mem[_336]:
                mem[_336 + mem[_336] + 196] = 0
            require ext_code.size(address(_312))
            call address(_312).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, Mask(112, 0, _329) * s * _302 / (s * _302) + (1000 * Mask(112, 0, _326)), address(_315), 128, mem[_336], mem[_336 + 196 len ceil32(mem[_336])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = Mask(112, 0, _329) * s * _302 / (s * _302) + (1000 * Mask(112, 0, _326))
            continue 
        _337 = mem[64]
        mem[64] = mem[64] + 32
        mem[_337 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_337 + 36] = Mask(112, 0, _326) * s * _302 / (s * _302) + (1000 * Mask(112, 0, _329))
        mem[_337 + 68] = 0
        mem[_337 + 100] = address(_315)
        mem[_337 + 132] = 128
        mem[_337 + 164] = mem[_337]
        t = 0
        while t < mem[_337]:
            mem[t + _337 + 196] = mem[t + _337 + 32]
            t = t + 32
            continue 
        if ceil32(mem[_337]) > mem[_337]:
            mem[_337 + mem[_337] + 196] = 0
        require ext_code.size(address(_312))
        call address(_312).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args Mask(112, 0, _326) * s * _302 / (s * _302) + (1000 * Mask(112, 0, _329)), 0, address(_315), 128, mem[_337], mem[_337 + 196 len ceil32(mem[_337])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = Mask(112, 0, _326) * s * _302 / (s * _302) + (1000 * Mask(112, 0, _329))
        continue 
    if s < mem[ceil32(return_data.size) + 320] + stor1:
        revert with 0, '12'
    mem[mem[64] + 4] = 0xd528697008ac67a21818751a5e3c58c8dae54696
    mem[mem[64] + 36] = arg4 + arg3
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args 0xd528697008ac67a21818751a5e3c58c8dae54696, arg4 + arg3
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _324 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_324] == bool(mem[_324])
    if not mem[_324]:
        revert with 0, '11'
}

function sub_4d218389(?) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[0] = msg.sender
    mem[32] = 5
    if not stor5[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    staticcall arg4.getReserves() with:
            gas gas_remaining wei
    require ext_call.success
    staticcall arg5.getReserves() with:
            gas gas_remaining wei
    if arg3 >= 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 < arg3:
            if 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) < ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) or 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) == ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2):
                s = (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * arg1) + 1 / 2
                t = 1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * arg1
                while s < t:
                    s = s + (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * arg1 / s) / 2
                    t = s
                    continue 
                if 1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) < t:
                    if (t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1) + stor1 < arg1 * t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1 * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) / (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) + (arg1 * t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1):
                        if t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1:
                            mem[96] = 96
                            mem[128] = 96
                            mem[160] = 96
                            mem[192] = 0
                            mem[224] = 96
                            mem[256] = 96
                            mem[288] = 96
                            mem[320] = 0
                            mem[352] = 2
                            mem[384] = arg1
                            mem[416] = arg2
                            mem[448] = 3
                            mem[480] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[512] = address(arg3)
                            mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[576] = 3
                            mem[608] = address(arg4)
                            mem[640] = address(arg5)
                            mem[672] = this.address
                            mem[704] = 352
                            mem[736] = 448
                            mem[768] = 576
                            mem[800] = t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                            mem[836] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1 > ext_call.return_data[0]:
                                idx = 0
                                s = 480
                                u = ceil32(return_data.size) + 1152
                                while idx < 3:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                idx = 0
                                s = 608
                                u = ceil32(return_data.size) + 1280
                                while idx < 3:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                                call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), (t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1) + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = stor3
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[ceil32(return_data.size) + 1504] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = stor3 + (gas_remaining / 20 * 3600) + 1
                            else:
                                mem[ceil32(return_data.size) + 836] = uint64(arg4) << 96
                                mem[ceil32(return_data.size) + 868] = t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args arg4 << 192, t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                                mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 832
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                                while idx < 2:
                                    require idx < mem[mem[704]]
                                    _795 = mem[(32 * idx) + mem[704] + 32]
                                    require idx < mem[mem[736]]
                                    _809 = mem[(32 * idx) + mem[736] + 32]
                                    require idx + 1 < mem[mem[736]]
                                    _818 = mem[(32 * idx + 1) + mem[736] + 32]
                                    require idx < mem[mem[768]]
                                    _831 = mem[(32 * idx) + mem[768] + 32]
                                    require idx + 1 < mem[mem[768]]
                                    _843 = mem[(32 * idx + 1) + mem[768] + 32]
                                    require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                    staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[(32 * idx) + mem[736] + 44 len 20] < mem[(32 * idx + 1) + mem[736] + 44 len 20]:
                                        _893 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        _905 = mem[_893]
                                        require mem[_893] == mem[_893 + 18 len 14]
                                        _917 = mem[_893 + 32]
                                        require mem[_893 + 32] == mem[_893 + 50 len 14]
                                        require mem[_893 + 64] == mem[_893 + 92 len 4]
                                        if address(_809) == address(_809):
                                            _932 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_932 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_932 + 36] = 0
                                            mem[_932 + 68] = Mask(112, 0, _917) * s * _795 / (s * _795) + (1000 * Mask(112, 0, _905))
                                            mem[_932 + 100] = address(_843)
                                            mem[_932 + 132] = 128
                                            mem[_932 + 164] = mem[_932]
                                            t = 0
                                            while t < mem[_932]:
                                                mem[t + _932 + 196] = mem[t + _932 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_932]) > mem[_932]:
                                                mem[_932 + mem[_932] + 196] = 0
                                            require ext_code.size(address(_831))
                                            call address(_831).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, Mask(112, 0, _917) * s * _795 / (s * _795) + (1000 * Mask(112, 0, _905)), address(_843), 128, mem[_932], mem[_932 + 196 len ceil32(mem[_932])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = Mask(112, 0, _917) * s * _795 / (s * _795) + (1000 * Mask(112, 0, _905))
                                            continue 
                                        _933 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_933 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_933 + 36] = Mask(112, 0, _905) * s * _795 / (s * _795) + (1000 * Mask(112, 0, _917))
                                        mem[_933 + 68] = 0
                                        mem[_933 + 100] = address(_843)
                                        mem[_933 + 132] = 128
                                        mem[_933 + 164] = mem[_933]
                                        t = 0
                                        while t < mem[_933]:
                                            mem[t + _933 + 196] = mem[t + _933 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_933]) > mem[_933]:
                                            mem[_933 + mem[_933] + 196] = 0
                                        require ext_code.size(address(_831))
                                        call address(_831).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args Mask(112, 0, _905) * s * _795 / (s * _795) + (1000 * Mask(112, 0, _917)), 0, address(_843), 128, mem[_933], mem[_933 + 196 len ceil32(mem[_933])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = Mask(112, 0, _905) * s * _795 / (s * _795) + (1000 * Mask(112, 0, _917))
                                        continue 
                                    _894 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _906 = mem[_894]
                                    require mem[_894] == mem[_894 + 18 len 14]
                                    _918 = mem[_894 + 32]
                                    require mem[_894 + 32] == mem[_894 + 50 len 14]
                                    require mem[_894 + 64] == mem[_894 + 92 len 4]
                                    if address(_809) == address(_818):
                                        _934 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_934 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_934 + 36] = 0
                                        mem[_934 + 68] = Mask(112, 0, _918) * s * _795 / (s * _795) + (1000 * Mask(112, 0, _906))
                                        mem[_934 + 100] = address(_843)
                                        mem[_934 + 132] = 128
                                        mem[_934 + 164] = mem[_934]
                                        t = 0
                                        while t < mem[_934]:
                                            mem[t + _934 + 196] = mem[t + _934 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_934]) > mem[_934]:
                                            mem[_934 + mem[_934] + 196] = 0
                                        require ext_code.size(address(_831))
                                        call address(_831).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, _918) * s * _795 / (s * _795) + (1000 * Mask(112, 0, _906)), address(_843), 128, mem[_934], mem[_934 + 196 len ceil32(mem[_934])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = Mask(112, 0, _918) * s * _795 / (s * _795) + (1000 * Mask(112, 0, _906))
                                        continue 
                                    _935 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_935 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_935 + 36] = Mask(112, 0, _906) * s * _795 / (s * _795) + (1000 * Mask(112, 0, _918))
                                    mem[_935 + 68] = 0
                                    mem[_935 + 100] = address(_843)
                                    mem[_935 + 132] = 128
                                    mem[_935 + 164] = mem[_935]
                                    t = 0
                                    while t < mem[_935]:
                                        mem[t + _935 + 196] = mem[t + _935 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_935]) > mem[_935]:
                                        mem[_935 + mem[_935] + 196] = 0
                                    require ext_code.size(address(_831))
                                    call address(_831).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, _906) * s * _795 / (s * _795) + (1000 * Mask(112, 0, _918)), 0, address(_843), 128, mem[_935], mem[_935 + 196 len ceil32(mem[_935])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _906) * s * _795 / (s * _795) + (1000 * Mask(112, 0, _918))
                                    continue 
                                if s < mem[800] + stor1:
                                    revert with 0, '12'
                                _830 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_830] = 0
                                mem[_830 + 32] = 0
                                _842 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_842] = stor3
                                mem[_842 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_842]
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[mem[64]] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = mem[_842] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_842 + 32]
    else:
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 >= arg3:
            if 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) < ext_call.return_data[0] * arg2 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) or 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) == ext_call.return_data[0] * arg2 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2):
                s = (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) * ext_call.return_data[0] * arg2 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) * arg1) + 1 / 2
                t = 1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) * ext_call.return_data[0] * arg2 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) * arg1
                while s < t:
                    s = s + (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) * ext_call.return_data[0] * arg2 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) * arg1 / s) / 2
                    t = s
                    continue 
                if 1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) < t:
                    if (t - (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1) + stor1 < arg1 * t - (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1 * ext_call.return_data[0] * arg2 * ext_call.return_data[32] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) / (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) + (arg1 * t - (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1):
                        if t - (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1:
                            mem[96] = 96
                            mem[128] = 96
                            mem[160] = 96
                            mem[192] = 0
                            mem[224] = 96
                            mem[256] = 96
                            mem[288] = 96
                            mem[320] = 0
                            mem[352] = 2
                            mem[384] = arg1
                            mem[416] = arg2
                            mem[448] = 3
                            mem[480] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[512] = address(arg3)
                            mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[576] = 3
                            mem[608] = address(arg4)
                            mem[640] = address(arg5)
                            mem[672] = this.address
                            mem[704] = 352
                            mem[736] = 448
                            mem[768] = 576
                            mem[800] = t - (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1
                            mem[836] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if t - (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1 > ext_call.return_data[0]:
                                idx = 0
                                s = 480
                                u = ceil32(return_data.size) + 1152
                                while idx < 3:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                idx = 0
                                s = 608
                                u = ceil32(return_data.size) + 1280
                                while idx < 3:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                                call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), (t - (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1) + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, t - (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = stor3
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[ceil32(return_data.size) + 1504] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = stor3 + (gas_remaining / 20 * 3600) + 1
                            else:
                                mem[ceil32(return_data.size) + 836] = uint64(arg4) << 96
                                mem[ceil32(return_data.size) + 868] = t - (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args arg4 << 192, t - (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1
                                mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 832
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = t - (1000 * 1000 * ext_call.return_data[32] * ext_call.return_data[0] / (1000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1
                                while idx < 2:
                                    require idx < mem[mem[704]]
                                    _800 = mem[(32 * idx) + mem[704] + 32]
                                    require idx < mem[mem[736]]
                                    _812 = mem[(32 * idx) + mem[736] + 32]
                                    require idx + 1 < mem[mem[736]]
                                    _822 = mem[(32 * idx + 1) + mem[736] + 32]
                                    require idx < mem[mem[768]]
                                    _835 = mem[(32 * idx) + mem[768] + 32]
                                    require idx + 1 < mem[mem[768]]
                                    _845 = mem[(32 * idx + 1) + mem[768] + 32]
                                    require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                    staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[(32 * idx) + mem[736] + 44 len 20] < mem[(32 * idx + 1) + mem[736] + 44 len 20]:
                                        _896 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        _907 = mem[_896]
                                        require mem[_896] == mem[_896 + 18 len 14]
                                        _919 = mem[_896 + 32]
                                        require mem[_896 + 32] == mem[_896 + 50 len 14]
                                        require mem[_896 + 64] == mem[_896 + 92 len 4]
                                        if address(_812) == address(_812):
                                            _936 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_936 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_936 + 36] = 0
                                            mem[_936 + 68] = Mask(112, 0, _919) * s * _800 / (s * _800) + (1000 * Mask(112, 0, _907))
                                            mem[_936 + 100] = address(_845)
                                            mem[_936 + 132] = 128
                                            mem[_936 + 164] = mem[_936]
                                            t = 0
                                            while t < mem[_936]:
                                                mem[t + _936 + 196] = mem[t + _936 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_936]) > mem[_936]:
                                                mem[_936 + mem[_936] + 196] = 0
                                            require ext_code.size(address(_835))
                                            call address(_835).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, Mask(112, 0, _919) * s * _800 / (s * _800) + (1000 * Mask(112, 0, _907)), address(_845), 128, mem[_936], mem[_936 + 196 len ceil32(mem[_936])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = Mask(112, 0, _919) * s * _800 / (s * _800) + (1000 * Mask(112, 0, _907))
                                            continue 
                                        _937 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_937 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_937 + 36] = Mask(112, 0, _907) * s * _800 / (s * _800) + (1000 * Mask(112, 0, _919))
                                        mem[_937 + 68] = 0
                                        mem[_937 + 100] = address(_845)
                                        mem[_937 + 132] = 128
                                        mem[_937 + 164] = mem[_937]
                                        t = 0
                                        while t < mem[_937]:
                                            mem[t + _937 + 196] = mem[t + _937 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_937]) > mem[_937]:
                                            mem[_937 + mem[_937] + 196] = 0
                                        require ext_code.size(address(_835))
                                        call address(_835).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args Mask(112, 0, _907) * s * _800 / (s * _800) + (1000 * Mask(112, 0, _919)), 0, address(_845), 128, mem[_937], mem[_937 + 196 len ceil32(mem[_937])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = Mask(112, 0, _907) * s * _800 / (s * _800) + (1000 * Mask(112, 0, _919))
                                        continue 
                                    _897 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _908 = mem[_897]
                                    require mem[_897] == mem[_897 + 18 len 14]
                                    _920 = mem[_897 + 32]
                                    require mem[_897 + 32] == mem[_897 + 50 len 14]
                                    require mem[_897 + 64] == mem[_897 + 92 len 4]
                                    if address(_812) == address(_822):
                                        _938 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_938 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_938 + 36] = 0
                                        mem[_938 + 68] = Mask(112, 0, _920) * s * _800 / (s * _800) + (1000 * Mask(112, 0, _908))
                                        mem[_938 + 100] = address(_845)
                                        mem[_938 + 132] = 128
                                        mem[_938 + 164] = mem[_938]
                                        t = 0
                                        while t < mem[_938]:
                                            mem[t + _938 + 196] = mem[t + _938 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_938]) > mem[_938]:
                                            mem[_938 + mem[_938] + 196] = 0
                                        require ext_code.size(address(_835))
                                        call address(_835).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, _920) * s * _800 / (s * _800) + (1000 * Mask(112, 0, _908)), address(_845), 128, mem[_938], mem[_938 + 196 len ceil32(mem[_938])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = Mask(112, 0, _920) * s * _800 / (s * _800) + (1000 * Mask(112, 0, _908))
                                        continue 
                                    _939 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_939 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_939 + 36] = Mask(112, 0, _908) * s * _800 / (s * _800) + (1000 * Mask(112, 0, _920))
                                    mem[_939 + 68] = 0
                                    mem[_939 + 100] = address(_845)
                                    mem[_939 + 132] = 128
                                    mem[_939 + 164] = mem[_939]
                                    t = 0
                                    while t < mem[_939]:
                                        mem[t + _939 + 196] = mem[t + _939 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_939]) > mem[_939]:
                                        mem[_939 + mem[_939] + 196] = 0
                                    require ext_code.size(address(_835))
                                    call address(_835).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, _908) * s * _800 / (s * _800) + (1000 * Mask(112, 0, _920)), 0, address(_845), 128, mem[_939], mem[_939 + 196 len ceil32(mem[_939])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _908) * s * _800 / (s * _800) + (1000 * Mask(112, 0, _920))
                                    continue 
                                if s < mem[800] + stor1:
                                    revert with 0, '12'
                                _834 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_834] = 0
                                mem[_834 + 32] = 0
                                _844 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_844] = stor3
                                mem[_844 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_844]
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[mem[64]] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = mem[_844] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_844 + 32]
        else:
            if 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) < ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) or 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) == ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2):
                s = (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * arg1) + 1 / 2
                t = 1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * arg1
                while s < t:
                    s = s + (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * arg1 / s) / 2
                    t = s
                    continue 
                if 1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) < t:
                    if (t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1) + stor1 < arg1 * t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1 * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) / (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) + (arg1 * t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1):
                        if t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1:
                            mem[96] = 96
                            mem[128] = 96
                            mem[160] = 96
                            mem[192] = 0
                            mem[224] = 96
                            mem[256] = 96
                            mem[288] = 96
                            mem[320] = 0
                            mem[352] = 2
                            mem[384] = arg1
                            mem[416] = arg2
                            mem[448] = 3
                            mem[480] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[512] = address(arg3)
                            mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[576] = 3
                            mem[608] = address(arg4)
                            mem[640] = address(arg5)
                            mem[672] = this.address
                            mem[704] = 352
                            mem[736] = 448
                            mem[768] = 576
                            mem[800] = t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                            mem[836] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1 > ext_call.return_data[0]:
                                idx = 0
                                s = 480
                                u = ceil32(return_data.size) + 1152
                                while idx < 3:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                idx = 0
                                s = 608
                                u = ceil32(return_data.size) + 1280
                                while idx < 3:
                                    mem[u] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                                call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                     gas gas_remaining wei
                                    args address(this.address), (t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1) + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = stor3
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[ceil32(return_data.size) + 1504] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = stor3 + (gas_remaining / 20 * 3600) + 1
                            else:
                                mem[ceil32(return_data.size) + 836] = uint64(arg4) << 96
                                mem[ceil32(return_data.size) + 868] = t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args arg4 << 192, t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                                mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 832
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = t - (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[32] / (1000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                                while idx < 2:
                                    require idx < mem[mem[704]]
                                    _805 = mem[(32 * idx) + mem[704] + 32]
                                    require idx < mem[mem[736]]
                                    _815 = mem[(32 * idx) + mem[736] + 32]
                                    require idx + 1 < mem[mem[736]]
                                    _826 = mem[(32 * idx + 1) + mem[736] + 32]
                                    require idx < mem[mem[768]]
                                    _839 = mem[(32 * idx) + mem[768] + 32]
                                    require idx + 1 < mem[mem[768]]
                                    _847 = mem[(32 * idx + 1) + mem[768] + 32]
                                    require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                    staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[(32 * idx) + mem[736] + 44 len 20] < mem[(32 * idx + 1) + mem[736] + 44 len 20]:
                                        _899 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        _909 = mem[_899]
                                        require mem[_899] == mem[_899 + 18 len 14]
                                        _921 = mem[_899 + 32]
                                        require mem[_899 + 32] == mem[_899 + 50 len 14]
                                        require mem[_899 + 64] == mem[_899 + 92 len 4]
                                        if address(_815) == address(_815):
                                            _940 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_940 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_940 + 36] = 0
                                            mem[_940 + 68] = Mask(112, 0, _921) * s * _805 / (s * _805) + (1000 * Mask(112, 0, _909))
                                            mem[_940 + 100] = address(_847)
                                            mem[_940 + 132] = 128
                                            mem[_940 + 164] = mem[_940]
                                            t = 0
                                            while t < mem[_940]:
                                                mem[t + _940 + 196] = mem[t + _940 + 32]
                                                t = t + 32
                                                continue 
                                            if ceil32(mem[_940]) > mem[_940]:
                                                mem[_940 + mem[_940] + 196] = 0
                                            require ext_code.size(address(_839))
                                            call address(_839).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, Mask(112, 0, _921) * s * _805 / (s * _805) + (1000 * Mask(112, 0, _909)), address(_847), 128, mem[_940], mem[_940 + 196 len ceil32(mem[_940])]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = Mask(112, 0, _921) * s * _805 / (s * _805) + (1000 * Mask(112, 0, _909))
                                            continue 
                                        _941 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_941 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_941 + 36] = Mask(112, 0, _909) * s * _805 / (s * _805) + (1000 * Mask(112, 0, _921))
                                        mem[_941 + 68] = 0
                                        mem[_941 + 100] = address(_847)
                                        mem[_941 + 132] = 128
                                        mem[_941 + 164] = mem[_941]
                                        t = 0
                                        while t < mem[_941]:
                                            mem[t + _941 + 196] = mem[t + _941 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_941]) > mem[_941]:
                                            mem[_941 + mem[_941] + 196] = 0
                                        require ext_code.size(address(_839))
                                        call address(_839).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args Mask(112, 0, _909) * s * _805 / (s * _805) + (1000 * Mask(112, 0, _921)), 0, address(_847), 128, mem[_941], mem[_941 + 196 len ceil32(mem[_941])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = Mask(112, 0, _909) * s * _805 / (s * _805) + (1000 * Mask(112, 0, _921))
                                        continue 
                                    _900 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _910 = mem[_900]
                                    require mem[_900] == mem[_900 + 18 len 14]
                                    _922 = mem[_900 + 32]
                                    require mem[_900 + 32] == mem[_900 + 50 len 14]
                                    require mem[_900 + 64] == mem[_900 + 92 len 4]
                                    if address(_815) == address(_826):
                                        _942 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_942 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_942 + 36] = 0
                                        mem[_942 + 68] = Mask(112, 0, _922) * s * _805 / (s * _805) + (1000 * Mask(112, 0, _910))
                                        mem[_942 + 100] = address(_847)
                                        mem[_942 + 132] = 128
                                        mem[_942 + 164] = mem[_942]
                                        t = 0
                                        while t < mem[_942]:
                                            mem[t + _942 + 196] = mem[t + _942 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_942]) > mem[_942]:
                                            mem[_942 + mem[_942] + 196] = 0
                                        require ext_code.size(address(_839))
                                        call address(_839).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, _922) * s * _805 / (s * _805) + (1000 * Mask(112, 0, _910)), address(_847), 128, mem[_942], mem[_942 + 196 len ceil32(mem[_942])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = Mask(112, 0, _922) * s * _805 / (s * _805) + (1000 * Mask(112, 0, _910))
                                        continue 
                                    _943 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_943 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_943 + 36] = Mask(112, 0, _910) * s * _805 / (s * _805) + (1000 * Mask(112, 0, _922))
                                    mem[_943 + 68] = 0
                                    mem[_943 + 100] = address(_847)
                                    mem[_943 + 132] = 128
                                    mem[_943 + 164] = mem[_943]
                                    t = 0
                                    while t < mem[_943]:
                                        mem[t + _943 + 196] = mem[t + _943 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_943]) > mem[_943]:
                                        mem[_943 + mem[_943] + 196] = 0
                                    require ext_code.size(address(_839))
                                    call address(_839).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, _910) * s * _805 / (s * _805) + (1000 * Mask(112, 0, _922)), 0, address(_847), 128, mem[_943], mem[_943 + 196 len ceil32(mem[_943])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _910) * s * _805 / (s * _805) + (1000 * Mask(112, 0, _922))
                                    continue 
                                if s < mem[800] + stor1:
                                    revert with 0, '12'
                                _838 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_838] = 0
                                mem[_838 + 32] = 0
                                _846 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_846] = stor3
                                mem[_846 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_846]
                                    while idx < stor3 + (gas_remaining / 20 * 3600) + 1:
                                        require idx < stor2.length
                                        mem[mem[64]] = 0xda91a10100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(stor2[idx])
                                        call stor2[idx].0xda91a101 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < stor2.length
                                        mem[0] = 2
                                        stor2[idx] = 0
                                        idx = idx + 1
                                        continue 
                                    stor3 = mem[_846] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_846 + 32]
}



}
