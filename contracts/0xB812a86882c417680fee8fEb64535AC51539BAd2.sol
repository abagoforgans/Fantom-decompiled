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
        mem[96 len 195] = code.data[11099 len 195]
        create contract with 0 wei
                        code: code.data[11099 len 195]
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
                mem[96 len 195] = code.data[11099 len 195]
                create contract with 0 wei
                                code: code.data[11099 len 195]
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
        _238 = mem[(32 * idx) + mem[ceil32(return_data.size) + 224] + 32]
        require idx < mem[mem[ceil32(return_data.size) + 256]]
        _242 = mem[(32 * idx) + mem[ceil32(return_data.size) + 256] + 32]
        require idx + 1 < mem[mem[ceil32(return_data.size) + 256]]
        _245 = mem[(32 * idx + 1) + mem[ceil32(return_data.size) + 256] + 32]
        require idx < mem[mem[ceil32(return_data.size) + 288]]
        _248 = mem[(32 * idx) + mem[ceil32(return_data.size) + 288] + 32]
        require idx + 1 < mem[mem[ceil32(return_data.size) + 288]]
        _251 = mem[(32 * idx + 1) + mem[ceil32(return_data.size) + 288] + 32]
        require ext_code.size(mem[(32 * idx) + mem[ceil32(return_data.size) + 288] + 44 len 20])
        staticcall mem[(32 * idx) + mem[ceil32(return_data.size) + 288] + 44 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _255 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _256 = mem[_255]
        require mem[_255] == mem[_255 + 18 len 14]
        _260 = mem[_255 + 32]
        require mem[_255 + 32] == mem[_255 + 50 len 14]
        require mem[_255 + 64] == mem[_255 + 92 len 4]
        if address(_242) < address(_245):
            _264 = mem[64]
            mem[64] = mem[64] + 32
            mem[_264 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_264 + 36] = 0
            mem[_264 + 68] = Mask(112, 0, _260) * s * _238 / (s * _238) + (10000 * Mask(112, 0, _256))
            mem[_264 + 100] = address(_251)
            mem[_264 + 132] = 128
            mem[_264 + 164] = mem[_264]
            t = 0
            while t < mem[_264]:
                mem[t + _264 + 196] = mem[t + _264 + 32]
                t = t + 32
                continue 
            if ceil32(mem[_264]) > mem[_264]:
                mem[_264 + mem[_264] + 196] = 0
            require ext_code.size(address(_248))
            call address(_248).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, Mask(112, 0, _260) * s * _238 / (s * _238) + (10000 * Mask(112, 0, _256)), address(_251), 128, mem[_264], mem[_264 + 196 len ceil32(mem[_264])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = Mask(112, 0, _260) * s * _238 / (s * _238) + (10000 * Mask(112, 0, _256))
            continue 
        _265 = mem[64]
        mem[64] = mem[64] + 32
        mem[_265 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_265 + 36] = Mask(112, 0, _256) * s * _238 / (s * _238) + (10000 * Mask(112, 0, _260))
        mem[_265 + 68] = 0
        mem[_265 + 100] = address(_251)
        mem[_265 + 132] = 128
        mem[_265 + 164] = mem[_265]
        t = 0
        while t < mem[_265]:
            mem[t + _265 + 196] = mem[t + _265 + 32]
            t = t + 32
            continue 
        if ceil32(mem[_265]) > mem[_265]:
            mem[_265 + mem[_265] + 196] = 0
        require ext_code.size(address(_248))
        call address(_248).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args Mask(112, 0, _256) * s * _238 / (s * _238) + (10000 * Mask(112, 0, _260)), 0, address(_251), 128, mem[_265], mem[_265 + 196 len ceil32(mem[_265])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = Mask(112, 0, _256) * s * _238 / (s * _238) + (10000 * Mask(112, 0, _260))
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
    _258 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_258] == bool(mem[_258])
    if not mem[_258]:
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
            if 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) < ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) or 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) == ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2):
                s = (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * arg1) + 1 / 2
                t = 10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * arg1
                while s < t:
                    s = s + (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * arg1 / s) / 2
                    t = s
                    continue 
                if 10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) < t:
                    if (t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1) + stor1 < arg1 * t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1 * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) / (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) + (arg1 * t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1):
                        if t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1:
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
                            mem[800] = t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
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
                            if t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1 > ext_call.return_data[0]:
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
                                    args address(this.address), (t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1) + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                                mem[ceil32(return_data.size) + 868] = t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args arg4 << 192, t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                                mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 832
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                                while idx < 2:
                                    require idx < mem[mem[704]]
                                    _711 = mem[(32 * idx) + mem[704] + 32]
                                    require idx < mem[mem[736]]
                                    _725 = mem[(32 * idx) + mem[736] + 32]
                                    require idx + 1 < mem[mem[736]]
                                    _734 = mem[(32 * idx + 1) + mem[736] + 32]
                                    require idx < mem[mem[768]]
                                    _747 = mem[(32 * idx) + mem[768] + 32]
                                    require idx + 1 < mem[mem[768]]
                                    _759 = mem[(32 * idx + 1) + mem[768] + 32]
                                    require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                    staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _782 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _802 = mem[_782]
                                    require mem[_782] == mem[_782 + 18 len 14]
                                    _815 = mem[_782 + 32]
                                    require mem[_782 + 32] == mem[_782 + 50 len 14]
                                    require mem[_782 + 64] == mem[_782 + 92 len 4]
                                    if address(_725) < address(_734):
                                        _830 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_830 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_830 + 36] = 0
                                        mem[_830 + 68] = Mask(112, 0, _815) * s * _711 / (s * _711) + (10000 * Mask(112, 0, _802))
                                        mem[_830 + 100] = address(_759)
                                        mem[_830 + 132] = 128
                                        mem[_830 + 164] = mem[_830]
                                        t = 0
                                        while t < mem[_830]:
                                            mem[t + _830 + 196] = mem[t + _830 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_830]) > mem[_830]:
                                            mem[_830 + mem[_830] + 196] = 0
                                        require ext_code.size(address(_747))
                                        call address(_747).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, _815) * s * _711 / (s * _711) + (10000 * Mask(112, 0, _802)), address(_759), 128, mem[_830], mem[_830 + 196 len ceil32(mem[_830])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = Mask(112, 0, _815) * s * _711 / (s * _711) + (10000 * Mask(112, 0, _802))
                                        continue 
                                    _831 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_831 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_831 + 36] = Mask(112, 0, _802) * s * _711 / (s * _711) + (10000 * Mask(112, 0, _815))
                                    mem[_831 + 68] = 0
                                    mem[_831 + 100] = address(_759)
                                    mem[_831 + 132] = 128
                                    mem[_831 + 164] = mem[_831]
                                    t = 0
                                    while t < mem[_831]:
                                        mem[t + _831 + 196] = mem[t + _831 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_831]) > mem[_831]:
                                        mem[_831 + mem[_831] + 196] = 0
                                    require ext_code.size(address(_747))
                                    call address(_747).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, _802) * s * _711 / (s * _711) + (10000 * Mask(112, 0, _815)), 0, address(_759), 128, mem[_831], mem[_831 + 196 len ceil32(mem[_831])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _802) * s * _711 / (s * _711) + (10000 * Mask(112, 0, _815))
                                    continue 
                                if s < mem[800] + stor1:
                                    revert with 0, '12'
                                _746 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_746] = 0
                                mem[_746 + 32] = 0
                                _758 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_758] = stor3
                                mem[_758 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_758]
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
                                    stor3 = mem[_758] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_758 + 32]
    else:
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 >= arg3:
            if 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) < ext_call.return_data[0] * arg2 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) or 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) == ext_call.return_data[0] * arg2 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2):
                s = (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) * ext_call.return_data[0] * arg2 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) * arg1) + 1 / 2
                t = 10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) * ext_call.return_data[0] * arg2 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) * arg1
                while s < t:
                    s = s + (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) * ext_call.return_data[0] * arg2 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) * arg1 / s) / 2
                    t = s
                    continue 
                if 10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) < t:
                    if (t - (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1) + stor1 < arg1 * t - (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1 * ext_call.return_data[0] * arg2 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2) / (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) + (arg1 * t - (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1):
                        if t - (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1:
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
                            mem[800] = t - (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1
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
                            if t - (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1 > ext_call.return_data[0]:
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
                                    args address(this.address), (t - (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1) + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, t - (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                                mem[ceil32(return_data.size) + 868] = t - (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args arg4 << 192, t - (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1
                                mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 832
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = t - (10000 * 10000 * ext_call.return_data[32] * ext_call.return_data[0] / (10000 * ext_call.return_data[0]) + (ext_call.return_data[0] * arg2)) / arg1
                                while idx < 2:
                                    require idx < mem[mem[704]]
                                    _716 = mem[(32 * idx) + mem[704] + 32]
                                    require idx < mem[mem[736]]
                                    _728 = mem[(32 * idx) + mem[736] + 32]
                                    require idx + 1 < mem[mem[736]]
                                    _738 = mem[(32 * idx + 1) + mem[736] + 32]
                                    require idx < mem[mem[768]]
                                    _751 = mem[(32 * idx) + mem[768] + 32]
                                    require idx + 1 < mem[mem[768]]
                                    _761 = mem[(32 * idx + 1) + mem[768] + 32]
                                    require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                    staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _783 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _805 = mem[_783]
                                    require mem[_783] == mem[_783 + 18 len 14]
                                    _816 = mem[_783 + 32]
                                    require mem[_783 + 32] == mem[_783 + 50 len 14]
                                    require mem[_783 + 64] == mem[_783 + 92 len 4]
                                    if address(_728) < address(_738):
                                        _832 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_832 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_832 + 36] = 0
                                        mem[_832 + 68] = Mask(112, 0, _816) * s * _716 / (s * _716) + (10000 * Mask(112, 0, _805))
                                        mem[_832 + 100] = address(_761)
                                        mem[_832 + 132] = 128
                                        mem[_832 + 164] = mem[_832]
                                        t = 0
                                        while t < mem[_832]:
                                            mem[t + _832 + 196] = mem[t + _832 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_832]) > mem[_832]:
                                            mem[_832 + mem[_832] + 196] = 0
                                        require ext_code.size(address(_751))
                                        call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, _816) * s * _716 / (s * _716) + (10000 * Mask(112, 0, _805)), address(_761), 128, mem[_832], mem[_832 + 196 len ceil32(mem[_832])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = Mask(112, 0, _816) * s * _716 / (s * _716) + (10000 * Mask(112, 0, _805))
                                        continue 
                                    _833 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_833 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_833 + 36] = Mask(112, 0, _805) * s * _716 / (s * _716) + (10000 * Mask(112, 0, _816))
                                    mem[_833 + 68] = 0
                                    mem[_833 + 100] = address(_761)
                                    mem[_833 + 132] = 128
                                    mem[_833 + 164] = mem[_833]
                                    t = 0
                                    while t < mem[_833]:
                                        mem[t + _833 + 196] = mem[t + _833 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_833]) > mem[_833]:
                                        mem[_833 + mem[_833] + 196] = 0
                                    require ext_code.size(address(_751))
                                    call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, _805) * s * _716 / (s * _716) + (10000 * Mask(112, 0, _816)), 0, address(_761), 128, mem[_833], mem[_833 + 196 len ceil32(mem[_833])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _805) * s * _716 / (s * _716) + (10000 * Mask(112, 0, _816))
                                    continue 
                                if s < mem[800] + stor1:
                                    revert with 0, '12'
                                _750 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_750] = 0
                                mem[_750 + 32] = 0
                                _760 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_760] = stor3
                                mem[_760 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_760]
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
                                    stor3 = mem[_760] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_760 + 32]
        else:
            if 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) < ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) or 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) == ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2):
                s = (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * arg1) + 1 / 2
                t = 10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * arg1
                while s < t:
                    s = s + (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) * arg1 / s) / 2
                    t = s
                    continue 
                if 10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) < t:
                    if (t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1) + stor1 < arg1 * t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1 * ext_call.return_data[32] * arg2 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2) / (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) + (arg1 * t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1):
                        if t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1:
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
                            mem[800] = t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
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
                            if t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1 > ext_call.return_data[0]:
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
                                    args address(this.address), (t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1) + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                                mem[ceil32(return_data.size) + 868] = t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args arg4 << 192, t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                                mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 832
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = t - (10000 * 10000 * ext_call.return_data[0] * ext_call.return_data[32] / (10000 * ext_call.return_data[32]) + (ext_call.return_data[32] * arg2)) / arg1
                                while idx < 2:
                                    require idx < mem[mem[704]]
                                    _721 = mem[(32 * idx) + mem[704] + 32]
                                    require idx < mem[mem[736]]
                                    _731 = mem[(32 * idx) + mem[736] + 32]
                                    require idx + 1 < mem[mem[736]]
                                    _742 = mem[(32 * idx + 1) + mem[736] + 32]
                                    require idx < mem[mem[768]]
                                    _755 = mem[(32 * idx) + mem[768] + 32]
                                    require idx + 1 < mem[mem[768]]
                                    _763 = mem[(32 * idx + 1) + mem[768] + 32]
                                    require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                    staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _784 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _808 = mem[_784]
                                    require mem[_784] == mem[_784 + 18 len 14]
                                    _817 = mem[_784 + 32]
                                    require mem[_784 + 32] == mem[_784 + 50 len 14]
                                    require mem[_784 + 64] == mem[_784 + 92 len 4]
                                    if address(_731) < address(_742):
                                        _834 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_834 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_834 + 36] = 0
                                        mem[_834 + 68] = Mask(112, 0, _817) * s * _721 / (s * _721) + (10000 * Mask(112, 0, _808))
                                        mem[_834 + 100] = address(_763)
                                        mem[_834 + 132] = 128
                                        mem[_834 + 164] = mem[_834]
                                        t = 0
                                        while t < mem[_834]:
                                            mem[t + _834 + 196] = mem[t + _834 + 32]
                                            t = t + 32
                                            continue 
                                        if ceil32(mem[_834]) > mem[_834]:
                                            mem[_834 + mem[_834] + 196] = 0
                                        require ext_code.size(address(_755))
                                        call address(_755).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, Mask(112, 0, _817) * s * _721 / (s * _721) + (10000 * Mask(112, 0, _808)), address(_763), 128, mem[_834], mem[_834 + 196 len ceil32(mem[_834])]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = Mask(112, 0, _817) * s * _721 / (s * _721) + (10000 * Mask(112, 0, _808))
                                        continue 
                                    _835 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_835 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_835 + 36] = Mask(112, 0, _808) * s * _721 / (s * _721) + (10000 * Mask(112, 0, _817))
                                    mem[_835 + 68] = 0
                                    mem[_835 + 100] = address(_763)
                                    mem[_835 + 132] = 128
                                    mem[_835 + 164] = mem[_835]
                                    t = 0
                                    while t < mem[_835]:
                                        mem[t + _835 + 196] = mem[t + _835 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_835]) > mem[_835]:
                                        mem[_835 + mem[_835] + 196] = 0
                                    require ext_code.size(address(_755))
                                    call address(_755).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args Mask(112, 0, _808) * s * _721 / (s * _721) + (10000 * Mask(112, 0, _817)), 0, address(_763), 128, mem[_835], mem[_835 + 196 len ceil32(mem[_835])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _808) * s * _721 / (s * _721) + (10000 * Mask(112, 0, _817))
                                    continue 
                                if s < mem[800] + stor1:
                                    revert with 0, '12'
                                _754 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_754] = 0
                                mem[_754 + 32] = 0
                                _762 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_762] = stor3
                                mem[_762 + 32] = stor4
                                if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                    idx = mem[_762]
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
                                    stor3 = mem[_762] + (gas_remaining / 20 * 3600) + 1
                                    stor4 = mem[_762 + 32]
}



}
