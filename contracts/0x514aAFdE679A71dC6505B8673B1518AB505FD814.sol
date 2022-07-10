contract main {




// =====================  Runtime code  =====================


#
#  - sub_81aaa29c(?)
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
        mem[96 len 195] = code.data[10739 len 195]
        create contract with 0 wei
                        code: code.data[10739 len 195]
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
                mem[96 len 195] = code.data[10739 len 195]
                create contract with 0 wei
                                code: code.data[10739 len 195]
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

function sub_c007acca(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    mem[0] = msg.sender
    mem[32] = 5
    if not stor5[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    staticcall arg5.getReserves() with:
            gas gas_remaining wei
    require ext_call.success
    staticcall arg6.getReserves() with:
            gas gas_remaining wei
    require ext_call.success
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 >= arg4:
        if arg4 >= 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if arg4 >= 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 >= arg4:
                    if 0 > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2655 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2734 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2782 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2847 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2911 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3038 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3136 = mem[_3038]
                                require mem[_3038] == mem[_3038 + 18 len 14]
                                _3214 = mem[_3038 + 32]
                                require mem[_3038 + 32] == mem[_3038 + 50 len 14]
                                require mem[_3038 + 64] == mem[_3038 + 92 len 4]
                                if address(_2734) < address(_2782):
                                    _3262 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3262 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3262 + 36] = 0
                                    mem[_3262 + 68] = Mask(112, 0, _3214) * s * _2655 / (s * _2655) + (10000 * Mask(112, 0, _3136))
                                    mem[_3262 + 100] = address(_2911)
                                    mem[_3262 + 132] = 128
                                    mem[_3262 + 164] = mem[_3262]
                                    t = 0
                                    while t < mem[_3262]:
                                        mem[t + _3262 + 196] = mem[t + _3262 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3262]) > mem[_3262]:
                                        mem[_3262 + mem[_3262] + 196] = 0
                                    require ext_code.size(address(_2847))
                                    call address(_2847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3214) * s * _2655 / (s * _2655) + (10000 * Mask(112, 0, _3136)), address(_2911), 128, mem[_3262], mem[_3262 + 196 len ceil32(mem[_3262])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3214) * s * _2655 / (s * _2655) + (10000 * Mask(112, 0, _3136))
                                    continue 
                                _3263 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3263 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3263 + 36] = Mask(112, 0, _3136) * s * _2655 / (s * _2655) + (10000 * Mask(112, 0, _3214))
                                mem[_3263 + 68] = 0
                                mem[_3263 + 100] = address(_2911)
                                mem[_3263 + 132] = 128
                                mem[_3263 + 164] = mem[_3263]
                                t = 0
                                while t < mem[_3263]:
                                    mem[t + _3263 + 196] = mem[t + _3263 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3263]) > mem[_3263]:
                                    mem[_3263 + mem[_3263] + 196] = 0
                                require ext_code.size(address(_2847))
                                call address(_2847).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3136) * s * _2655 / (s * _2655) + (10000 * Mask(112, 0, _3214)), 0, address(_2911), 128, mem[_3263], mem[_3263 + 196 len ceil32(mem[_3263])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3136) * s * _2655 / (s * _2655) + (10000 * Mask(112, 0, _3214))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2846 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2846] = 0
                            mem[_2846 + 32] = 0
                            _2910 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2910] = stor3
                            mem[_2910 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2910]
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
                                stor3 = mem[_2910] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2910 + 32]
                else:
                    if 0 / 10000 * ext_call.return_data[32] > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2660 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2737 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2786 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2851 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2913 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3039 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3139 = mem[_3039]
                                require mem[_3039] == mem[_3039 + 18 len 14]
                                _3215 = mem[_3039 + 32]
                                require mem[_3039 + 32] == mem[_3039 + 50 len 14]
                                require mem[_3039 + 64] == mem[_3039 + 92 len 4]
                                if address(_2737) < address(_2786):
                                    _3264 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3264 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3264 + 36] = 0
                                    mem[_3264 + 68] = Mask(112, 0, _3215) * s * _2660 / (s * _2660) + (10000 * Mask(112, 0, _3139))
                                    mem[_3264 + 100] = address(_2913)
                                    mem[_3264 + 132] = 128
                                    mem[_3264 + 164] = mem[_3264]
                                    t = 0
                                    while t < mem[_3264]:
                                        mem[t + _3264 + 196] = mem[t + _3264 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3264]) > mem[_3264]:
                                        mem[_3264 + mem[_3264] + 196] = 0
                                    require ext_code.size(address(_2851))
                                    call address(_2851).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3215) * s * _2660 / (s * _2660) + (10000 * Mask(112, 0, _3139)), address(_2913), 128, mem[_3264], mem[_3264 + 196 len ceil32(mem[_3264])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3215) * s * _2660 / (s * _2660) + (10000 * Mask(112, 0, _3139))
                                    continue 
                                _3265 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3265 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3265 + 36] = Mask(112, 0, _3139) * s * _2660 / (s * _2660) + (10000 * Mask(112, 0, _3215))
                                mem[_3265 + 68] = 0
                                mem[_3265 + 100] = address(_2913)
                                mem[_3265 + 132] = 128
                                mem[_3265 + 164] = mem[_3265]
                                t = 0
                                while t < mem[_3265]:
                                    mem[t + _3265 + 196] = mem[t + _3265 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3265]) > mem[_3265]:
                                    mem[_3265 + mem[_3265] + 196] = 0
                                require ext_code.size(address(_2851))
                                call address(_2851).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3139) * s * _2660 / (s * _2660) + (10000 * Mask(112, 0, _3215)), 0, address(_2913), 128, mem[_3265], mem[_3265 + 196 len ceil32(mem[_3265])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3139) * s * _2660 / (s * _2660) + (10000 * Mask(112, 0, _3215))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2850 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2850] = 0
                            mem[_2850 + 32] = 0
                            _2912 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2912] = stor3
                            mem[_2912 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2912]
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
                                stor3 = mem[_2912] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2912 + 32]
            else:
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 >= arg4:
                    if 0 / 10000 * ext_call.return_data[0] > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2665 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2740 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2790 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2855 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2915 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3040 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3142 = mem[_3040]
                                require mem[_3040] == mem[_3040 + 18 len 14]
                                _3216 = mem[_3040 + 32]
                                require mem[_3040 + 32] == mem[_3040 + 50 len 14]
                                require mem[_3040 + 64] == mem[_3040 + 92 len 4]
                                if address(_2740) < address(_2790):
                                    _3266 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3266 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3266 + 36] = 0
                                    mem[_3266 + 68] = Mask(112, 0, _3216) * s * _2665 / (s * _2665) + (10000 * Mask(112, 0, _3142))
                                    mem[_3266 + 100] = address(_2915)
                                    mem[_3266 + 132] = 128
                                    mem[_3266 + 164] = mem[_3266]
                                    t = 0
                                    while t < mem[_3266]:
                                        mem[t + _3266 + 196] = mem[t + _3266 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3266]) > mem[_3266]:
                                        mem[_3266 + mem[_3266] + 196] = 0
                                    require ext_code.size(address(_2855))
                                    call address(_2855).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3216) * s * _2665 / (s * _2665) + (10000 * Mask(112, 0, _3142)), address(_2915), 128, mem[_3266], mem[_3266 + 196 len ceil32(mem[_3266])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3216) * s * _2665 / (s * _2665) + (10000 * Mask(112, 0, _3142))
                                    continue 
                                _3267 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3267 + 36] = Mask(112, 0, _3142) * s * _2665 / (s * _2665) + (10000 * Mask(112, 0, _3216))
                                mem[_3267 + 68] = 0
                                mem[_3267 + 100] = address(_2915)
                                mem[_3267 + 132] = 128
                                mem[_3267 + 164] = mem[_3267]
                                t = 0
                                while t < mem[_3267]:
                                    mem[t + _3267 + 196] = mem[t + _3267 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3267]) > mem[_3267]:
                                    mem[_3267 + mem[_3267] + 196] = 0
                                require ext_code.size(address(_2855))
                                call address(_2855).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3142) * s * _2665 / (s * _2665) + (10000 * Mask(112, 0, _3216)), 0, address(_2915), 128, mem[_3267], mem[_3267 + 196 len ceil32(mem[_3267])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3142) * s * _2665 / (s * _2665) + (10000 * Mask(112, 0, _3216))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2854 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2854] = 0
                            mem[_2854 + 32] = 0
                            _2914 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2914] = stor3
                            mem[_2914 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2914]
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
                                stor3 = mem[_2914] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2914 + 32]
                else:
                    if 0 / 10000 * ext_call.return_data[32] > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2670 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2743 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2794 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2859 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2917 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3041 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3145 = mem[_3041]
                                require mem[_3041] == mem[_3041 + 18 len 14]
                                _3217 = mem[_3041 + 32]
                                require mem[_3041 + 32] == mem[_3041 + 50 len 14]
                                require mem[_3041 + 64] == mem[_3041 + 92 len 4]
                                if address(_2743) < address(_2794):
                                    _3268 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3268 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3268 + 36] = 0
                                    mem[_3268 + 68] = Mask(112, 0, _3217) * s * _2670 / (s * _2670) + (10000 * Mask(112, 0, _3145))
                                    mem[_3268 + 100] = address(_2917)
                                    mem[_3268 + 132] = 128
                                    mem[_3268 + 164] = mem[_3268]
                                    t = 0
                                    while t < mem[_3268]:
                                        mem[t + _3268 + 196] = mem[t + _3268 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3268]) > mem[_3268]:
                                        mem[_3268 + mem[_3268] + 196] = 0
                                    require ext_code.size(address(_2859))
                                    call address(_2859).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3217) * s * _2670 / (s * _2670) + (10000 * Mask(112, 0, _3145)), address(_2917), 128, mem[_3268], mem[_3268 + 196 len ceil32(mem[_3268])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3217) * s * _2670 / (s * _2670) + (10000 * Mask(112, 0, _3145))
                                    continue 
                                _3269 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3269 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3269 + 36] = Mask(112, 0, _3145) * s * _2670 / (s * _2670) + (10000 * Mask(112, 0, _3217))
                                mem[_3269 + 68] = 0
                                mem[_3269 + 100] = address(_2917)
                                mem[_3269 + 132] = 128
                                mem[_3269 + 164] = mem[_3269]
                                t = 0
                                while t < mem[_3269]:
                                    mem[t + _3269 + 196] = mem[t + _3269 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3269]) > mem[_3269]:
                                    mem[_3269 + mem[_3269] + 196] = 0
                                require ext_code.size(address(_2859))
                                call address(_2859).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3145) * s * _2670 / (s * _2670) + (10000 * Mask(112, 0, _3217)), 0, address(_2917), 128, mem[_3269], mem[_3269 + 196 len ceil32(mem[_3269])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3145) * s * _2670 / (s * _2670) + (10000 * Mask(112, 0, _3217))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2858 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2858] = 0
                            mem[_2858 + 32] = 0
                            _2916 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2916] = stor3
                            mem[_2916 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2916]
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
                                stor3 = mem[_2916] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2916 + 32]
        else:
            if arg4 >= 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 >= arg4:
                    if 0 > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2675 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2746 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2798 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2863 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2919 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3042 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3148 = mem[_3042]
                                require mem[_3042] == mem[_3042 + 18 len 14]
                                _3218 = mem[_3042 + 32]
                                require mem[_3042 + 32] == mem[_3042 + 50 len 14]
                                require mem[_3042 + 64] == mem[_3042 + 92 len 4]
                                if address(_2746) < address(_2798):
                                    _3270 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3270 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3270 + 36] = 0
                                    mem[_3270 + 68] = Mask(112, 0, _3218) * s * _2675 / (s * _2675) + (10000 * Mask(112, 0, _3148))
                                    mem[_3270 + 100] = address(_2919)
                                    mem[_3270 + 132] = 128
                                    mem[_3270 + 164] = mem[_3270]
                                    t = 0
                                    while t < mem[_3270]:
                                        mem[t + _3270 + 196] = mem[t + _3270 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3270]) > mem[_3270]:
                                        mem[_3270 + mem[_3270] + 196] = 0
                                    require ext_code.size(address(_2863))
                                    call address(_2863).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3218) * s * _2675 / (s * _2675) + (10000 * Mask(112, 0, _3148)), address(_2919), 128, mem[_3270], mem[_3270 + 196 len ceil32(mem[_3270])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3218) * s * _2675 / (s * _2675) + (10000 * Mask(112, 0, _3148))
                                    continue 
                                _3271 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3271 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3271 + 36] = Mask(112, 0, _3148) * s * _2675 / (s * _2675) + (10000 * Mask(112, 0, _3218))
                                mem[_3271 + 68] = 0
                                mem[_3271 + 100] = address(_2919)
                                mem[_3271 + 132] = 128
                                mem[_3271 + 164] = mem[_3271]
                                t = 0
                                while t < mem[_3271]:
                                    mem[t + _3271 + 196] = mem[t + _3271 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3271]) > mem[_3271]:
                                    mem[_3271 + mem[_3271] + 196] = 0
                                require ext_code.size(address(_2863))
                                call address(_2863).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3148) * s * _2675 / (s * _2675) + (10000 * Mask(112, 0, _3218)), 0, address(_2919), 128, mem[_3271], mem[_3271 + 196 len ceil32(mem[_3271])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3148) * s * _2675 / (s * _2675) + (10000 * Mask(112, 0, _3218))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2862 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2862] = 0
                            mem[_2862 + 32] = 0
                            _2918 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2918] = stor3
                            mem[_2918 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2918]
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
                                stor3 = mem[_2918] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2918 + 32]
                else:
                    if arg2 * arg1 * arg3 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg1 * arg3) * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg2 * arg1 * arg3 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg1 * arg3)) > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2680 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2749 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2802 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2867 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2921 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3043 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3151 = mem[_3043]
                                require mem[_3043] == mem[_3043 + 18 len 14]
                                _3219 = mem[_3043 + 32]
                                require mem[_3043 + 32] == mem[_3043 + 50 len 14]
                                require mem[_3043 + 64] == mem[_3043 + 92 len 4]
                                if address(_2749) < address(_2802):
                                    _3272 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3272 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3272 + 36] = 0
                                    mem[_3272 + 68] = Mask(112, 0, _3219) * s * _2680 / (s * _2680) + (10000 * Mask(112, 0, _3151))
                                    mem[_3272 + 100] = address(_2921)
                                    mem[_3272 + 132] = 128
                                    mem[_3272 + 164] = mem[_3272]
                                    t = 0
                                    while t < mem[_3272]:
                                        mem[t + _3272 + 196] = mem[t + _3272 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3272]) > mem[_3272]:
                                        mem[_3272 + mem[_3272] + 196] = 0
                                    require ext_code.size(address(_2867))
                                    call address(_2867).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3219) * s * _2680 / (s * _2680) + (10000 * Mask(112, 0, _3151)), address(_2921), 128, mem[_3272], mem[_3272 + 196 len ceil32(mem[_3272])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3219) * s * _2680 / (s * _2680) + (10000 * Mask(112, 0, _3151))
                                    continue 
                                _3273 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3273 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3273 + 36] = Mask(112, 0, _3151) * s * _2680 / (s * _2680) + (10000 * Mask(112, 0, _3219))
                                mem[_3273 + 68] = 0
                                mem[_3273 + 100] = address(_2921)
                                mem[_3273 + 132] = 128
                                mem[_3273 + 164] = mem[_3273]
                                t = 0
                                while t < mem[_3273]:
                                    mem[t + _3273 + 196] = mem[t + _3273 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3273]) > mem[_3273]:
                                    mem[_3273 + mem[_3273] + 196] = 0
                                require ext_code.size(address(_2867))
                                call address(_2867).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3151) * s * _2680 / (s * _2680) + (10000 * Mask(112, 0, _3219)), 0, address(_2921), 128, mem[_3273], mem[_3273 + 196 len ceil32(mem[_3273])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3151) * s * _2680 / (s * _2680) + (10000 * Mask(112, 0, _3219))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2866 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2866] = 0
                            mem[_2866 + 32] = 0
                            _2920 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2920] = stor3
                            mem[_2920 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2920]
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
                                stor3 = mem[_2920] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2920 + 32]
            else:
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 >= arg4:
                    if arg2 * arg1 * arg3 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg1 * arg3) * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (arg2 * arg1 * arg3 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg1 * arg3)) > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2685 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2752 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2806 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2871 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2923 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3044 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3154 = mem[_3044]
                                require mem[_3044] == mem[_3044 + 18 len 14]
                                _3220 = mem[_3044 + 32]
                                require mem[_3044 + 32] == mem[_3044 + 50 len 14]
                                require mem[_3044 + 64] == mem[_3044 + 92 len 4]
                                if address(_2752) < address(_2806):
                                    _3274 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3274 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3274 + 36] = 0
                                    mem[_3274 + 68] = Mask(112, 0, _3220) * s * _2685 / (s * _2685) + (10000 * Mask(112, 0, _3154))
                                    mem[_3274 + 100] = address(_2923)
                                    mem[_3274 + 132] = 128
                                    mem[_3274 + 164] = mem[_3274]
                                    t = 0
                                    while t < mem[_3274]:
                                        mem[t + _3274 + 196] = mem[t + _3274 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3274]) > mem[_3274]:
                                        mem[_3274 + mem[_3274] + 196] = 0
                                    require ext_code.size(address(_2871))
                                    call address(_2871).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3220) * s * _2685 / (s * _2685) + (10000 * Mask(112, 0, _3154)), address(_2923), 128, mem[_3274], mem[_3274 + 196 len ceil32(mem[_3274])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3220) * s * _2685 / (s * _2685) + (10000 * Mask(112, 0, _3154))
                                    continue 
                                _3275 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3275 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3275 + 36] = Mask(112, 0, _3154) * s * _2685 / (s * _2685) + (10000 * Mask(112, 0, _3220))
                                mem[_3275 + 68] = 0
                                mem[_3275 + 100] = address(_2923)
                                mem[_3275 + 132] = 128
                                mem[_3275 + 164] = mem[_3275]
                                t = 0
                                while t < mem[_3275]:
                                    mem[t + _3275 + 196] = mem[t + _3275 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3275]) > mem[_3275]:
                                    mem[_3275 + mem[_3275] + 196] = 0
                                require ext_code.size(address(_2871))
                                call address(_2871).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3154) * s * _2685 / (s * _2685) + (10000 * Mask(112, 0, _3220)), 0, address(_2923), 128, mem[_3275], mem[_3275 + 196 len ceil32(mem[_3275])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3154) * s * _2685 / (s * _2685) + (10000 * Mask(112, 0, _3220))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2870 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2870] = 0
                            mem[_2870 + 32] = 0
                            _2922 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2922] = stor3
                            mem[_2922 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2922]
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
                                stor3 = mem[_2922] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2922 + 32]
                else:
                    if arg2 * arg1 * arg3 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg1 * arg3) * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg2 * arg1 * arg3 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg1 * arg3)) > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2690 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2755 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2810 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2875 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2925 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3045 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3157 = mem[_3045]
                                require mem[_3045] == mem[_3045 + 18 len 14]
                                _3221 = mem[_3045 + 32]
                                require mem[_3045 + 32] == mem[_3045 + 50 len 14]
                                require mem[_3045 + 64] == mem[_3045 + 92 len 4]
                                if address(_2755) < address(_2810):
                                    _3276 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3276 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3276 + 36] = 0
                                    mem[_3276 + 68] = Mask(112, 0, _3221) * s * _2690 / (s * _2690) + (10000 * Mask(112, 0, _3157))
                                    mem[_3276 + 100] = address(_2925)
                                    mem[_3276 + 132] = 128
                                    mem[_3276 + 164] = mem[_3276]
                                    t = 0
                                    while t < mem[_3276]:
                                        mem[t + _3276 + 196] = mem[t + _3276 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3276]) > mem[_3276]:
                                        mem[_3276 + mem[_3276] + 196] = 0
                                    require ext_code.size(address(_2875))
                                    call address(_2875).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3221) * s * _2690 / (s * _2690) + (10000 * Mask(112, 0, _3157)), address(_2925), 128, mem[_3276], mem[_3276 + 196 len ceil32(mem[_3276])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3221) * s * _2690 / (s * _2690) + (10000 * Mask(112, 0, _3157))
                                    continue 
                                _3277 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3277 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3277 + 36] = Mask(112, 0, _3157) * s * _2690 / (s * _2690) + (10000 * Mask(112, 0, _3221))
                                mem[_3277 + 68] = 0
                                mem[_3277 + 100] = address(_2925)
                                mem[_3277 + 132] = 128
                                mem[_3277 + 164] = mem[_3277]
                                t = 0
                                while t < mem[_3277]:
                                    mem[t + _3277 + 196] = mem[t + _3277 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3277]) > mem[_3277]:
                                    mem[_3277 + mem[_3277] + 196] = 0
                                require ext_code.size(address(_2875))
                                call address(_2875).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3157) * s * _2690 / (s * _2690) + (10000 * Mask(112, 0, _3221)), 0, address(_2925), 128, mem[_3277], mem[_3277 + 196 len ceil32(mem[_3277])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3157) * s * _2690 / (s * _2690) + (10000 * Mask(112, 0, _3221))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2874 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2874] = 0
                            mem[_2874 + 32] = 0
                            _2924 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2924] = stor3
                            mem[_2924 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2924]
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
                                stor3 = mem[_2924] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2924 + 32]
    else:
        if arg4 >= 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
            if arg4 >= 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 >= arg4:
                    if 0 > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2695 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2758 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2814 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2879 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2927 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3046 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3160 = mem[_3046]
                                require mem[_3046] == mem[_3046 + 18 len 14]
                                _3222 = mem[_3046 + 32]
                                require mem[_3046 + 32] == mem[_3046 + 50 len 14]
                                require mem[_3046 + 64] == mem[_3046 + 92 len 4]
                                if address(_2758) < address(_2814):
                                    _3278 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3278 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3278 + 36] = 0
                                    mem[_3278 + 68] = Mask(112, 0, _3222) * s * _2695 / (s * _2695) + (10000 * Mask(112, 0, _3160))
                                    mem[_3278 + 100] = address(_2927)
                                    mem[_3278 + 132] = 128
                                    mem[_3278 + 164] = mem[_3278]
                                    t = 0
                                    while t < mem[_3278]:
                                        mem[t + _3278 + 196] = mem[t + _3278 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3278]) > mem[_3278]:
                                        mem[_3278 + mem[_3278] + 196] = 0
                                    require ext_code.size(address(_2879))
                                    call address(_2879).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3222) * s * _2695 / (s * _2695) + (10000 * Mask(112, 0, _3160)), address(_2927), 128, mem[_3278], mem[_3278 + 196 len ceil32(mem[_3278])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3222) * s * _2695 / (s * _2695) + (10000 * Mask(112, 0, _3160))
                                    continue 
                                _3279 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3279 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3279 + 36] = Mask(112, 0, _3160) * s * _2695 / (s * _2695) + (10000 * Mask(112, 0, _3222))
                                mem[_3279 + 68] = 0
                                mem[_3279 + 100] = address(_2927)
                                mem[_3279 + 132] = 128
                                mem[_3279 + 164] = mem[_3279]
                                t = 0
                                while t < mem[_3279]:
                                    mem[t + _3279 + 196] = mem[t + _3279 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3279]) > mem[_3279]:
                                    mem[_3279 + mem[_3279] + 196] = 0
                                require ext_code.size(address(_2879))
                                call address(_2879).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3160) * s * _2695 / (s * _2695) + (10000 * Mask(112, 0, _3222)), 0, address(_2927), 128, mem[_3279], mem[_3279 + 196 len ceil32(mem[_3279])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3160) * s * _2695 / (s * _2695) + (10000 * Mask(112, 0, _3222))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2878 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2878] = 0
                            mem[_2878 + 32] = 0
                            _2926 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2926] = stor3
                            mem[_2926 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2926]
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
                                stor3 = mem[_2926] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2926 + 32]
                else:
                    if arg2 * arg1 * arg3 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (arg1 * arg3) * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg2 * arg1 * arg3 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (arg1 * arg3)) > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2700 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2761 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2818 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2883 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2929 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3047 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3163 = mem[_3047]
                                require mem[_3047] == mem[_3047 + 18 len 14]
                                _3223 = mem[_3047 + 32]
                                require mem[_3047 + 32] == mem[_3047 + 50 len 14]
                                require mem[_3047 + 64] == mem[_3047 + 92 len 4]
                                if address(_2761) < address(_2818):
                                    _3280 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3280 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3280 + 36] = 0
                                    mem[_3280 + 68] = Mask(112, 0, _3223) * s * _2700 / (s * _2700) + (10000 * Mask(112, 0, _3163))
                                    mem[_3280 + 100] = address(_2929)
                                    mem[_3280 + 132] = 128
                                    mem[_3280 + 164] = mem[_3280]
                                    t = 0
                                    while t < mem[_3280]:
                                        mem[t + _3280 + 196] = mem[t + _3280 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3280]) > mem[_3280]:
                                        mem[_3280 + mem[_3280] + 196] = 0
                                    require ext_code.size(address(_2883))
                                    call address(_2883).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3223) * s * _2700 / (s * _2700) + (10000 * Mask(112, 0, _3163)), address(_2929), 128, mem[_3280], mem[_3280 + 196 len ceil32(mem[_3280])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3223) * s * _2700 / (s * _2700) + (10000 * Mask(112, 0, _3163))
                                    continue 
                                _3281 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3281 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3281 + 36] = Mask(112, 0, _3163) * s * _2700 / (s * _2700) + (10000 * Mask(112, 0, _3223))
                                mem[_3281 + 68] = 0
                                mem[_3281 + 100] = address(_2929)
                                mem[_3281 + 132] = 128
                                mem[_3281 + 164] = mem[_3281]
                                t = 0
                                while t < mem[_3281]:
                                    mem[t + _3281 + 196] = mem[t + _3281 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3281]) > mem[_3281]:
                                    mem[_3281 + mem[_3281] + 196] = 0
                                require ext_code.size(address(_2883))
                                call address(_2883).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3163) * s * _2700 / (s * _2700) + (10000 * Mask(112, 0, _3223)), 0, address(_2929), 128, mem[_3281], mem[_3281 + 196 len ceil32(mem[_3281])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3163) * s * _2700 / (s * _2700) + (10000 * Mask(112, 0, _3223))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2882 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2882] = 0
                            mem[_2882 + 32] = 0
                            _2928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2928] = stor3
                            mem[_2928 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2928]
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
                                stor3 = mem[_2928] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2928 + 32]
            else:
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 >= arg4:
                    if arg2 * arg1 * arg3 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (arg1 * arg3) * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (arg2 * arg1 * arg3 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (arg1 * arg3)) > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2705 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2764 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2822 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2887 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2931 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3048 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3166 = mem[_3048]
                                require mem[_3048] == mem[_3048 + 18 len 14]
                                _3224 = mem[_3048 + 32]
                                require mem[_3048 + 32] == mem[_3048 + 50 len 14]
                                require mem[_3048 + 64] == mem[_3048 + 92 len 4]
                                if address(_2764) < address(_2822):
                                    _3282 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3282 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3282 + 36] = 0
                                    mem[_3282 + 68] = Mask(112, 0, _3224) * s * _2705 / (s * _2705) + (10000 * Mask(112, 0, _3166))
                                    mem[_3282 + 100] = address(_2931)
                                    mem[_3282 + 132] = 128
                                    mem[_3282 + 164] = mem[_3282]
                                    t = 0
                                    while t < mem[_3282]:
                                        mem[t + _3282 + 196] = mem[t + _3282 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3282]) > mem[_3282]:
                                        mem[_3282 + mem[_3282] + 196] = 0
                                    require ext_code.size(address(_2887))
                                    call address(_2887).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3224) * s * _2705 / (s * _2705) + (10000 * Mask(112, 0, _3166)), address(_2931), 128, mem[_3282], mem[_3282 + 196 len ceil32(mem[_3282])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3224) * s * _2705 / (s * _2705) + (10000 * Mask(112, 0, _3166))
                                    continue 
                                _3283 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3283 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3283 + 36] = Mask(112, 0, _3166) * s * _2705 / (s * _2705) + (10000 * Mask(112, 0, _3224))
                                mem[_3283 + 68] = 0
                                mem[_3283 + 100] = address(_2931)
                                mem[_3283 + 132] = 128
                                mem[_3283 + 164] = mem[_3283]
                                t = 0
                                while t < mem[_3283]:
                                    mem[t + _3283 + 196] = mem[t + _3283 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3283]) > mem[_3283]:
                                    mem[_3283 + mem[_3283] + 196] = 0
                                require ext_code.size(address(_2887))
                                call address(_2887).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3166) * s * _2705 / (s * _2705) + (10000 * Mask(112, 0, _3224)), 0, address(_2931), 128, mem[_3283], mem[_3283 + 196 len ceil32(mem[_3283])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3166) * s * _2705 / (s * _2705) + (10000 * Mask(112, 0, _3224))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2886 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2886] = 0
                            mem[_2886 + 32] = 0
                            _2930 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2930] = stor3
                            mem[_2930 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2930]
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
                                stor3 = mem[_2930] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2930 + 32]
                else:
                    if arg2 * arg1 * arg3 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (arg1 * arg3) * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg2 * arg1 * arg3 * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (arg1 * arg3)) > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2710 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2767 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2826 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2891 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2933 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3049 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3169 = mem[_3049]
                                require mem[_3049] == mem[_3049 + 18 len 14]
                                _3225 = mem[_3049 + 32]
                                require mem[_3049 + 32] == mem[_3049 + 50 len 14]
                                require mem[_3049 + 64] == mem[_3049 + 92 len 4]
                                if address(_2767) < address(_2826):
                                    _3284 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3284 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3284 + 36] = 0
                                    mem[_3284 + 68] = Mask(112, 0, _3225) * s * _2710 / (s * _2710) + (10000 * Mask(112, 0, _3169))
                                    mem[_3284 + 100] = address(_2933)
                                    mem[_3284 + 132] = 128
                                    mem[_3284 + 164] = mem[_3284]
                                    t = 0
                                    while t < mem[_3284]:
                                        mem[t + _3284 + 196] = mem[t + _3284 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3284]) > mem[_3284]:
                                        mem[_3284 + mem[_3284] + 196] = 0
                                    require ext_code.size(address(_2891))
                                    call address(_2891).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3225) * s * _2710 / (s * _2710) + (10000 * Mask(112, 0, _3169)), address(_2933), 128, mem[_3284], mem[_3284 + 196 len ceil32(mem[_3284])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3225) * s * _2710 / (s * _2710) + (10000 * Mask(112, 0, _3169))
                                    continue 
                                _3285 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3285 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3285 + 36] = Mask(112, 0, _3169) * s * _2710 / (s * _2710) + (10000 * Mask(112, 0, _3225))
                                mem[_3285 + 68] = 0
                                mem[_3285 + 100] = address(_2933)
                                mem[_3285 + 132] = 128
                                mem[_3285 + 164] = mem[_3285]
                                t = 0
                                while t < mem[_3285]:
                                    mem[t + _3285 + 196] = mem[t + _3285 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3285]) > mem[_3285]:
                                    mem[_3285 + mem[_3285] + 196] = 0
                                require ext_code.size(address(_2891))
                                call address(_2891).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3169) * s * _2710 / (s * _2710) + (10000 * Mask(112, 0, _3225)), 0, address(_2933), 128, mem[_3285], mem[_3285 + 196 len ceil32(mem[_3285])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3169) * s * _2710 / (s * _2710) + (10000 * Mask(112, 0, _3225))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2890 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2890] = 0
                            mem[_2890 + 32] = 0
                            _2932 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2932] = stor3
                            mem[_2932 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2932]
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
                                stor3 = mem[_2932] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2932 + 32]
        else:
            if arg4 >= 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 >= arg4:
                    if 0 > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2715 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2770 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2830 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2895 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2935 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3050 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3172 = mem[_3050]
                                require mem[_3050] == mem[_3050 + 18 len 14]
                                _3226 = mem[_3050 + 32]
                                require mem[_3050 + 32] == mem[_3050 + 50 len 14]
                                require mem[_3050 + 64] == mem[_3050 + 92 len 4]
                                if address(_2770) < address(_2830):
                                    _3286 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3286 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3286 + 36] = 0
                                    mem[_3286 + 68] = Mask(112, 0, _3226) * s * _2715 / (s * _2715) + (10000 * Mask(112, 0, _3172))
                                    mem[_3286 + 100] = address(_2935)
                                    mem[_3286 + 132] = 128
                                    mem[_3286 + 164] = mem[_3286]
                                    t = 0
                                    while t < mem[_3286]:
                                        mem[t + _3286 + 196] = mem[t + _3286 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3286]) > mem[_3286]:
                                        mem[_3286 + mem[_3286] + 196] = 0
                                    require ext_code.size(address(_2895))
                                    call address(_2895).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3226) * s * _2715 / (s * _2715) + (10000 * Mask(112, 0, _3172)), address(_2935), 128, mem[_3286], mem[_3286 + 196 len ceil32(mem[_3286])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3226) * s * _2715 / (s * _2715) + (10000 * Mask(112, 0, _3172))
                                    continue 
                                _3287 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3287 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3287 + 36] = Mask(112, 0, _3172) * s * _2715 / (s * _2715) + (10000 * Mask(112, 0, _3226))
                                mem[_3287 + 68] = 0
                                mem[_3287 + 100] = address(_2935)
                                mem[_3287 + 132] = 128
                                mem[_3287 + 164] = mem[_3287]
                                t = 0
                                while t < mem[_3287]:
                                    mem[t + _3287 + 196] = mem[t + _3287 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3287]) > mem[_3287]:
                                    mem[_3287 + mem[_3287] + 196] = 0
                                require ext_code.size(address(_2895))
                                call address(_2895).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3172) * s * _2715 / (s * _2715) + (10000 * Mask(112, 0, _3226)), 0, address(_2935), 128, mem[_3287], mem[_3287 + 196 len ceil32(mem[_3287])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3172) * s * _2715 / (s * _2715) + (10000 * Mask(112, 0, _3226))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2894 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2894] = 0
                            mem[_2894 + 32] = 0
                            _2934 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2934] = stor3
                            mem[_2934 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2934]
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
                                stor3 = mem[_2934] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2934 + 32]
                else:
                    if arg2 * arg1 * arg3 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg1 * arg3) * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg2 * arg1 * arg3 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg1 * arg3)) > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2720 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2773 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2834 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2899 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2937 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3051 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3175 = mem[_3051]
                                require mem[_3051] == mem[_3051 + 18 len 14]
                                _3227 = mem[_3051 + 32]
                                require mem[_3051 + 32] == mem[_3051 + 50 len 14]
                                require mem[_3051 + 64] == mem[_3051 + 92 len 4]
                                if address(_2773) < address(_2834):
                                    _3288 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3288 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3288 + 36] = 0
                                    mem[_3288 + 68] = Mask(112, 0, _3227) * s * _2720 / (s * _2720) + (10000 * Mask(112, 0, _3175))
                                    mem[_3288 + 100] = address(_2937)
                                    mem[_3288 + 132] = 128
                                    mem[_3288 + 164] = mem[_3288]
                                    t = 0
                                    while t < mem[_3288]:
                                        mem[t + _3288 + 196] = mem[t + _3288 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3288]) > mem[_3288]:
                                        mem[_3288 + mem[_3288] + 196] = 0
                                    require ext_code.size(address(_2899))
                                    call address(_2899).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3227) * s * _2720 / (s * _2720) + (10000 * Mask(112, 0, _3175)), address(_2937), 128, mem[_3288], mem[_3288 + 196 len ceil32(mem[_3288])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3227) * s * _2720 / (s * _2720) + (10000 * Mask(112, 0, _3175))
                                    continue 
                                _3289 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3289 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3289 + 36] = Mask(112, 0, _3175) * s * _2720 / (s * _2720) + (10000 * Mask(112, 0, _3227))
                                mem[_3289 + 68] = 0
                                mem[_3289 + 100] = address(_2937)
                                mem[_3289 + 132] = 128
                                mem[_3289 + 164] = mem[_3289]
                                t = 0
                                while t < mem[_3289]:
                                    mem[t + _3289 + 196] = mem[t + _3289 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3289]) > mem[_3289]:
                                    mem[_3289 + mem[_3289] + 196] = 0
                                require ext_code.size(address(_2899))
                                call address(_2899).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3175) * s * _2720 / (s * _2720) + (10000 * Mask(112, 0, _3227)), 0, address(_2937), 128, mem[_3289], mem[_3289 + 196 len ceil32(mem[_3289])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3175) * s * _2720 / (s * _2720) + (10000 * Mask(112, 0, _3227))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2898 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2898] = 0
                            mem[_2898 + 32] = 0
                            _2936 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2936] = stor3
                            mem[_2936 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2936]
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
                                stor3 = mem[_2936] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2936 + 32]
            else:
                if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 >= arg4:
                    if arg2 * arg1 * arg3 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg1 * arg3) * ext_call.return_data[32] / (10000 * ext_call.return_data[0]) + (arg2 * arg1 * arg3 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg1 * arg3)) > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2725 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2776 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2838 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2903 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2939 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3052 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3178 = mem[_3052]
                                require mem[_3052] == mem[_3052 + 18 len 14]
                                _3228 = mem[_3052 + 32]
                                require mem[_3052 + 32] == mem[_3052 + 50 len 14]
                                require mem[_3052 + 64] == mem[_3052 + 92 len 4]
                                if address(_2776) < address(_2838):
                                    _3290 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3290 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3290 + 36] = 0
                                    mem[_3290 + 68] = Mask(112, 0, _3228) * s * _2725 / (s * _2725) + (10000 * Mask(112, 0, _3178))
                                    mem[_3290 + 100] = address(_2939)
                                    mem[_3290 + 132] = 128
                                    mem[_3290 + 164] = mem[_3290]
                                    t = 0
                                    while t < mem[_3290]:
                                        mem[t + _3290 + 196] = mem[t + _3290 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3290]) > mem[_3290]:
                                        mem[_3290 + mem[_3290] + 196] = 0
                                    require ext_code.size(address(_2903))
                                    call address(_2903).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3228) * s * _2725 / (s * _2725) + (10000 * Mask(112, 0, _3178)), address(_2939), 128, mem[_3290], mem[_3290 + 196 len ceil32(mem[_3290])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3228) * s * _2725 / (s * _2725) + (10000 * Mask(112, 0, _3178))
                                    continue 
                                _3291 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3291 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3291 + 36] = Mask(112, 0, _3178) * s * _2725 / (s * _2725) + (10000 * Mask(112, 0, _3228))
                                mem[_3291 + 68] = 0
                                mem[_3291 + 100] = address(_2939)
                                mem[_3291 + 132] = 128
                                mem[_3291 + 164] = mem[_3291]
                                t = 0
                                while t < mem[_3291]:
                                    mem[t + _3291 + 196] = mem[t + _3291 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3291]) > mem[_3291]:
                                    mem[_3291 + mem[_3291] + 196] = 0
                                require ext_code.size(address(_2903))
                                call address(_2903).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3178) * s * _2725 / (s * _2725) + (10000 * Mask(112, 0, _3228)), 0, address(_2939), 128, mem[_3291], mem[_3291 + 196 len ceil32(mem[_3291])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3178) * s * _2725 / (s * _2725) + (10000 * Mask(112, 0, _3228))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2902 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2902] = 0
                            mem[_2902 + 32] = 0
                            _2938 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2938] = stor3
                            mem[_2938 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2938]
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
                                stor3 = mem[_2938] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2938 + 32]
                else:
                    if arg2 * arg1 * arg3 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg1 * arg3) * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg2 * arg1 * arg3 * ext_call.return_data[0] / (10000 * ext_call.return_data[32]) + (arg1 * arg3)) > arg3 + stor1:
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
                        mem[512] = address(arg4)
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = address(arg5)
                        mem[640] = address(arg6)
                        mem[672] = this.address
                        mem[704] = 352
                        mem[736] = 448
                        mem[768] = 576
                        mem[800] = arg3
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
                        if arg3 > ext_call.return_data[0]:
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, 96, 512, 32, 128, 224, 352, arg3, 2, arg1, arg2 >> 256, 3, mem[ceil32(return_data.size) + 1152 len 96], 3, mem[ceil32(return_data.size) + 1280 len 96]
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
                            mem[ceil32(return_data.size) + 836] = uint64(arg5) << 96
                            mem[ceil32(return_data.size) + 868] = arg3
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                                 gas gas_remaining wei
                                args arg5 << 192, arg3
                            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 832
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _2730 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _2779 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _2842 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _2907 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _2941 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3053 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3181 = mem[_3053]
                                require mem[_3053] == mem[_3053 + 18 len 14]
                                _3229 = mem[_3053 + 32]
                                require mem[_3053 + 32] == mem[_3053 + 50 len 14]
                                require mem[_3053 + 64] == mem[_3053 + 92 len 4]
                                if address(_2779) < address(_2842):
                                    _3292 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3292 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3292 + 36] = 0
                                    mem[_3292 + 68] = Mask(112, 0, _3229) * s * _2730 / (s * _2730) + (10000 * Mask(112, 0, _3181))
                                    mem[_3292 + 100] = address(_2941)
                                    mem[_3292 + 132] = 128
                                    mem[_3292 + 164] = mem[_3292]
                                    t = 0
                                    while t < mem[_3292]:
                                        mem[t + _3292 + 196] = mem[t + _3292 + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_3292]) > mem[_3292]:
                                        mem[_3292 + mem[_3292] + 196] = 0
                                    require ext_code.size(address(_2907))
                                    call address(_2907).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, Mask(112, 0, _3229) * s * _2730 / (s * _2730) + (10000 * Mask(112, 0, _3181)), address(_2941), 128, mem[_3292], mem[_3292 + 196 len ceil32(mem[_3292])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = Mask(112, 0, _3229) * s * _2730 / (s * _2730) + (10000 * Mask(112, 0, _3181))
                                    continue 
                                _3293 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3293 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3293 + 36] = Mask(112, 0, _3181) * s * _2730 / (s * _2730) + (10000 * Mask(112, 0, _3229))
                                mem[_3293 + 68] = 0
                                mem[_3293 + 100] = address(_2941)
                                mem[_3293 + 132] = 128
                                mem[_3293 + 164] = mem[_3293]
                                t = 0
                                while t < mem[_3293]:
                                    mem[t + _3293 + 196] = mem[t + _3293 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_3293]) > mem[_3293]:
                                    mem[_3293 + mem[_3293] + 196] = 0
                                require ext_code.size(address(_2907))
                                call address(_2907).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _3181) * s * _2730 / (s * _2730) + (10000 * Mask(112, 0, _3229)), 0, address(_2941), 128, mem[_3293], mem[_3293 + 196 len ceil32(mem[_3293])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = Mask(112, 0, _3181) * s * _2730 / (s * _2730) + (10000 * Mask(112, 0, _3229))
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                            _2906 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2906] = 0
                            mem[_2906 + 32] = 0
                            _2940 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2940] = stor3
                            mem[_2940 + 32] = stor4
                            if stor4 > stor3 + (gas_remaining / 20 * 3600) + 1:
                                idx = mem[_2940]
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
                                stor3 = mem[_2940] + (gas_remaining / 20 * 3600) + 1
                                stor4 = mem[_2940 + 32]
}



}
