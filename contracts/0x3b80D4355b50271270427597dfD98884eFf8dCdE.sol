contract main {




// =====================  Runtime code  =====================


#
#  - sub_81aaa29c(?)
#
uint8 stor0;
uint256 stor1;
mapping of uint8 stor2;

function sub_044ec7ad(?) {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function _fallback() payable {
  stop
}

function sub_855ec0ef(?) {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    stor1 = arg1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8dbe9b22(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        idx = idx + 1
        continue 
}

function sub_a2763cac(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_6d18b9f5(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
    stor1 = cd[36]
    stor0 = 0
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
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        if not stor2[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 'WRONG_OWNER'
        idx = idx + 1
        continue 
    return 1
}

function sub_1c61069c(?) {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call msg.sender with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[0] = arg1
    mem[32] = 2
    if not stor2[address(arg1)]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    if 0xd528697008ac67a21818751a5e3c58c8dae54696 != msg.sender:
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
    require ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 384 <= test266151307() and (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 384 >= 352
    mem[ceil32(return_data.size) + 352] = cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]
    require cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 68
    t = ceil32(return_data.size) + 384
    while idx < cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 224] = ceil32(return_data.size) + 352
    require cd[(arg5 + cd[(arg5 + 36)] + 68)] <= test266151307()
    require arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)] <= test266151307()
    require ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + 416 <= test266151307() and (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + 416 >= 384
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 384] = cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]
    require cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 68
    t = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 416
    while idx < cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 256] = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + 384
    require cd[(arg5 + cd[(arg5 + 36)] + 100)] <= test266151307()
    require arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)] <= test266151307()
    require ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]) + 448 <= test266151307() and (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]) + 448 >= 416
    mem[ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + 416] = cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]
    require cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 68
    t = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + 448
    while idx < cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 100)] + 36)]:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 288] = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]) + 416
    mem[ceil32(return_data.size) + 320] = cd[(arg5 + cd[(arg5 + 36)] + 132)]
    require 0 < cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 68)] + 36)]
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
    idx = 0
    s = cd[(arg5 + cd[(arg5 + 36)] + 132)]
    while idx < cd[(arg5 + cd[(arg5 + 36)] + cd[(arg5 + cd[(arg5 + 36)] + 36)] + 36)]:
        require idx < mem[mem[ceil32(return_data.size) + 224]]
        _246 = mem[(32 * idx) + mem[ceil32(return_data.size) + 224] + 32]
        require idx < mem[mem[ceil32(return_data.size) + 256]]
        _250 = mem[(32 * idx) + mem[ceil32(return_data.size) + 256] + 32]
        require idx + 1 < mem[mem[ceil32(return_data.size) + 256]]
        _253 = mem[(32 * idx + 1) + mem[ceil32(return_data.size) + 256] + 32]
        require idx < mem[mem[ceil32(return_data.size) + 288]]
        _256 = mem[(32 * idx) + mem[ceil32(return_data.size) + 288] + 32]
        require idx + 1 < mem[mem[ceil32(return_data.size) + 288]]
        _260 = mem[(32 * idx + 1) + mem[ceil32(return_data.size) + 288] + 32]
        require ext_code.size(mem[(32 * idx) + mem[ceil32(return_data.size) + 288] + 44 len 20])
        staticcall mem[(32 * idx) + mem[ceil32(return_data.size) + 288] + 44 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _264 = mem[_263]
        _267 = mem[_263 + 32]
        if address(_250) < address(_253):
            _272 = mem[64]
            mem[64] = mem[64] + 32
            mem[_272 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_272 + 36] = 0
            mem[_272 + 68] = _246 * s * Mask(112, 0, _267) / (10000 * Mask(112, 0, _264)) + (_246 * s)
            mem[_272 + 100] = address(_260)
            mem[_272 + 132] = 128
            mem[_272 + 164] = mem[_272]
            t = 0
            while t < mem[_272]:
                mem[_272 + t + 196] = mem[_272 + t + 32]
                t = t + 32
                continue 
            if ceil32(mem[_272]) > mem[_272]:
                mem[_272 + mem[_272] + 196] = 0
            require ext_code.size(address(_256))
            call address(_256).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _246 * s * Mask(112, 0, _267) / (10000 * Mask(112, 0, _264)) + (_246 * s), address(_260), 128, mem[_272], mem[_272 + 196 len ceil32(mem[_272])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = _246 * s * Mask(112, 0, _267) / (10000 * Mask(112, 0, _264)) + (_246 * s)
            continue 
        _273 = mem[64]
        mem[64] = mem[64] + 32
        mem[_273 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_273 + 36] = _246 * s * Mask(112, 0, _264) / (10000 * Mask(112, 0, _267)) + (_246 * s)
        mem[_273 + 68] = 0
        mem[_273 + 100] = address(_260)
        mem[_273 + 132] = 128
        mem[_273 + 164] = mem[_273]
        t = 0
        while t < mem[_273]:
            mem[_273 + t + 196] = mem[_273 + t + 32]
            t = t + 32
            continue 
        if ceil32(mem[_273]) > mem[_273]:
            mem[_273 + mem[_273] + 196] = 0
        require ext_code.size(address(_256))
        call address(_256).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _246 * s * Mask(112, 0, _264) / (10000 * Mask(112, 0, _267)) + (_246 * s), 0, address(_260), 128, mem[_273], mem[_273 + 196 len ceil32(mem[_273])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = _246 * s * Mask(112, 0, _264) / (10000 * Mask(112, 0, _267)) + (_246 * s)
        continue 
    if s < mem[ceil32(return_data.size) + 320] + stor1:
        revert with 0, '12'
    mem[mem[64] + 4] = 0xd528697008ac67a21818751a5e3c58c8dae54696
    mem[mem[64] + 36] = arg3 + arg4
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args 0xd528697008ac67a21818751a5e3c58c8dae54696, arg3 + arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _266 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not mem[_266]:
        revert with 0, '11'
}

function sub_c007acca(?) {
    require calldata.size - 4 >= 192
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[address(msg.sender)]:
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1455 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1534 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1582 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1646 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1695 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1774 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1822 = mem[_1774]
                                _1838 = mem[_1774 + 32]
                                if address(_1534) < address(_1582):
                                    _1934 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1934 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1934 + 36] = 0
                                    mem[_1934 + 68] = _1455 * s * Mask(112, 0, _1838) / (10000 * Mask(112, 0, _1822)) + (_1455 * s)
                                    mem[_1934 + 100] = address(_1695)
                                    mem[_1934 + 132] = 128
                                    mem[_1934 + 164] = mem[_1934]
                                    t = 0
                                    while t < mem[_1934]:
                                        mem[_1934 + t + 196] = mem[_1934 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1934]) > mem[_1934]:
                                        mem[_1934 + mem[_1934] + 196] = 0
                                    require ext_code.size(address(_1646))
                                    call address(_1646).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1455 * s * Mask(112, 0, _1838) / (10000 * Mask(112, 0, _1822)) + (_1455 * s), address(_1695), 128, mem[_1934], mem[_1934 + 196 len ceil32(mem[_1934])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1455 * s * Mask(112, 0, _1838) / (10000 * Mask(112, 0, _1822)) + (_1455 * s)
                                    continue 
                                _1935 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1935 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1935 + 36] = _1455 * s * Mask(112, 0, _1822) / (10000 * Mask(112, 0, _1838)) + (_1455 * s)
                                mem[_1935 + 68] = 0
                                mem[_1935 + 100] = address(_1695)
                                mem[_1935 + 132] = 128
                                mem[_1935 + 164] = mem[_1935]
                                t = 0
                                while t < mem[_1935]:
                                    mem[_1935 + t + 196] = mem[_1935 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1935]) > mem[_1935]:
                                    mem[_1935 + mem[_1935] + 196] = 0
                                require ext_code.size(address(_1646))
                                call address(_1646).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1455 * s * Mask(112, 0, _1822) / (10000 * Mask(112, 0, _1838)) + (_1455 * s), 0, address(_1695), 128, mem[_1935], mem[_1935 + 196 len ceil32(mem[_1935])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1455 * s * Mask(112, 0, _1822) / (10000 * Mask(112, 0, _1838)) + (_1455 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1460 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1537 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1586 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1649 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1697 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1776 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1823 = mem[_1776]
                                _1840 = mem[_1776 + 32]
                                if address(_1537) < address(_1586):
                                    _1936 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1936 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1936 + 36] = 0
                                    mem[_1936 + 68] = _1460 * s * Mask(112, 0, _1840) / (10000 * Mask(112, 0, _1823)) + (_1460 * s)
                                    mem[_1936 + 100] = address(_1697)
                                    mem[_1936 + 132] = 128
                                    mem[_1936 + 164] = mem[_1936]
                                    t = 0
                                    while t < mem[_1936]:
                                        mem[_1936 + t + 196] = mem[_1936 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1936]) > mem[_1936]:
                                        mem[_1936 + mem[_1936] + 196] = 0
                                    require ext_code.size(address(_1649))
                                    call address(_1649).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1460 * s * Mask(112, 0, _1840) / (10000 * Mask(112, 0, _1823)) + (_1460 * s), address(_1697), 128, mem[_1936], mem[_1936 + 196 len ceil32(mem[_1936])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1460 * s * Mask(112, 0, _1840) / (10000 * Mask(112, 0, _1823)) + (_1460 * s)
                                    continue 
                                _1937 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1937 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1937 + 36] = _1460 * s * Mask(112, 0, _1823) / (10000 * Mask(112, 0, _1840)) + (_1460 * s)
                                mem[_1937 + 68] = 0
                                mem[_1937 + 100] = address(_1697)
                                mem[_1937 + 132] = 128
                                mem[_1937 + 164] = mem[_1937]
                                t = 0
                                while t < mem[_1937]:
                                    mem[_1937 + t + 196] = mem[_1937 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1937]) > mem[_1937]:
                                    mem[_1937 + mem[_1937] + 196] = 0
                                require ext_code.size(address(_1649))
                                call address(_1649).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1460 * s * Mask(112, 0, _1823) / (10000 * Mask(112, 0, _1840)) + (_1460 * s), 0, address(_1697), 128, mem[_1937], mem[_1937 + 196 len ceil32(mem[_1937])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1460 * s * Mask(112, 0, _1823) / (10000 * Mask(112, 0, _1840)) + (_1460 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1465 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1540 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1590 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1652 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1699 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1778 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1824 = mem[_1778]
                                _1842 = mem[_1778 + 32]
                                if address(_1540) < address(_1590):
                                    _1938 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1938 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1938 + 36] = 0
                                    mem[_1938 + 68] = _1465 * s * Mask(112, 0, _1842) / (10000 * Mask(112, 0, _1824)) + (_1465 * s)
                                    mem[_1938 + 100] = address(_1699)
                                    mem[_1938 + 132] = 128
                                    mem[_1938 + 164] = mem[_1938]
                                    t = 0
                                    while t < mem[_1938]:
                                        mem[_1938 + t + 196] = mem[_1938 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1938]) > mem[_1938]:
                                        mem[_1938 + mem[_1938] + 196] = 0
                                    require ext_code.size(address(_1652))
                                    call address(_1652).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1465 * s * Mask(112, 0, _1842) / (10000 * Mask(112, 0, _1824)) + (_1465 * s), address(_1699), 128, mem[_1938], mem[_1938 + 196 len ceil32(mem[_1938])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1465 * s * Mask(112, 0, _1842) / (10000 * Mask(112, 0, _1824)) + (_1465 * s)
                                    continue 
                                _1939 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1939 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1939 + 36] = _1465 * s * Mask(112, 0, _1824) / (10000 * Mask(112, 0, _1842)) + (_1465 * s)
                                mem[_1939 + 68] = 0
                                mem[_1939 + 100] = address(_1699)
                                mem[_1939 + 132] = 128
                                mem[_1939 + 164] = mem[_1939]
                                t = 0
                                while t < mem[_1939]:
                                    mem[_1939 + t + 196] = mem[_1939 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1939]) > mem[_1939]:
                                    mem[_1939 + mem[_1939] + 196] = 0
                                require ext_code.size(address(_1652))
                                call address(_1652).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1465 * s * Mask(112, 0, _1824) / (10000 * Mask(112, 0, _1842)) + (_1465 * s), 0, address(_1699), 128, mem[_1939], mem[_1939 + 196 len ceil32(mem[_1939])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1465 * s * Mask(112, 0, _1824) / (10000 * Mask(112, 0, _1842)) + (_1465 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1470 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1543 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1594 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1655 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1701 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1780 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1825 = mem[_1780]
                                _1844 = mem[_1780 + 32]
                                if address(_1543) < address(_1594):
                                    _1940 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1940 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1940 + 36] = 0
                                    mem[_1940 + 68] = _1470 * s * Mask(112, 0, _1844) / (10000 * Mask(112, 0, _1825)) + (_1470 * s)
                                    mem[_1940 + 100] = address(_1701)
                                    mem[_1940 + 132] = 128
                                    mem[_1940 + 164] = mem[_1940]
                                    t = 0
                                    while t < mem[_1940]:
                                        mem[_1940 + t + 196] = mem[_1940 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1940]) > mem[_1940]:
                                        mem[_1940 + mem[_1940] + 196] = 0
                                    require ext_code.size(address(_1655))
                                    call address(_1655).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1470 * s * Mask(112, 0, _1844) / (10000 * Mask(112, 0, _1825)) + (_1470 * s), address(_1701), 128, mem[_1940], mem[_1940 + 196 len ceil32(mem[_1940])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1470 * s * Mask(112, 0, _1844) / (10000 * Mask(112, 0, _1825)) + (_1470 * s)
                                    continue 
                                _1941 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1941 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1941 + 36] = _1470 * s * Mask(112, 0, _1825) / (10000 * Mask(112, 0, _1844)) + (_1470 * s)
                                mem[_1941 + 68] = 0
                                mem[_1941 + 100] = address(_1701)
                                mem[_1941 + 132] = 128
                                mem[_1941 + 164] = mem[_1941]
                                t = 0
                                while t < mem[_1941]:
                                    mem[_1941 + t + 196] = mem[_1941 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1941]) > mem[_1941]:
                                    mem[_1941 + mem[_1941] + 196] = 0
                                require ext_code.size(address(_1655))
                                call address(_1655).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1470 * s * Mask(112, 0, _1825) / (10000 * Mask(112, 0, _1844)) + (_1470 * s), 0, address(_1701), 128, mem[_1941], mem[_1941 + 196 len ceil32(mem[_1941])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1470 * s * Mask(112, 0, _1825) / (10000 * Mask(112, 0, _1844)) + (_1470 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1475 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1546 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1598 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1658 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1703 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1782 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1826 = mem[_1782]
                                _1846 = mem[_1782 + 32]
                                if address(_1546) < address(_1598):
                                    _1942 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1942 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1942 + 36] = 0
                                    mem[_1942 + 68] = _1475 * s * Mask(112, 0, _1846) / (10000 * Mask(112, 0, _1826)) + (_1475 * s)
                                    mem[_1942 + 100] = address(_1703)
                                    mem[_1942 + 132] = 128
                                    mem[_1942 + 164] = mem[_1942]
                                    t = 0
                                    while t < mem[_1942]:
                                        mem[_1942 + t + 196] = mem[_1942 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1942]) > mem[_1942]:
                                        mem[_1942 + mem[_1942] + 196] = 0
                                    require ext_code.size(address(_1658))
                                    call address(_1658).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1475 * s * Mask(112, 0, _1846) / (10000 * Mask(112, 0, _1826)) + (_1475 * s), address(_1703), 128, mem[_1942], mem[_1942 + 196 len ceil32(mem[_1942])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1475 * s * Mask(112, 0, _1846) / (10000 * Mask(112, 0, _1826)) + (_1475 * s)
                                    continue 
                                _1943 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1943 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1943 + 36] = _1475 * s * Mask(112, 0, _1826) / (10000 * Mask(112, 0, _1846)) + (_1475 * s)
                                mem[_1943 + 68] = 0
                                mem[_1943 + 100] = address(_1703)
                                mem[_1943 + 132] = 128
                                mem[_1943 + 164] = mem[_1943]
                                t = 0
                                while t < mem[_1943]:
                                    mem[_1943 + t + 196] = mem[_1943 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1943]) > mem[_1943]:
                                    mem[_1943 + mem[_1943] + 196] = 0
                                require ext_code.size(address(_1658))
                                call address(_1658).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1475 * s * Mask(112, 0, _1826) / (10000 * Mask(112, 0, _1846)) + (_1475 * s), 0, address(_1703), 128, mem[_1943], mem[_1943 + 196 len ceil32(mem[_1943])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1475 * s * Mask(112, 0, _1826) / (10000 * Mask(112, 0, _1846)) + (_1475 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1480 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1549 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1602 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1661 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1705 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1784 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1827 = mem[_1784]
                                _1848 = mem[_1784 + 32]
                                if address(_1549) < address(_1602):
                                    _1944 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1944 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1944 + 36] = 0
                                    mem[_1944 + 68] = _1480 * s * Mask(112, 0, _1848) / (10000 * Mask(112, 0, _1827)) + (_1480 * s)
                                    mem[_1944 + 100] = address(_1705)
                                    mem[_1944 + 132] = 128
                                    mem[_1944 + 164] = mem[_1944]
                                    t = 0
                                    while t < mem[_1944]:
                                        mem[_1944 + t + 196] = mem[_1944 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1944]) > mem[_1944]:
                                        mem[_1944 + mem[_1944] + 196] = 0
                                    require ext_code.size(address(_1661))
                                    call address(_1661).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1480 * s * Mask(112, 0, _1848) / (10000 * Mask(112, 0, _1827)) + (_1480 * s), address(_1705), 128, mem[_1944], mem[_1944 + 196 len ceil32(mem[_1944])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1480 * s * Mask(112, 0, _1848) / (10000 * Mask(112, 0, _1827)) + (_1480 * s)
                                    continue 
                                _1945 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1945 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1945 + 36] = _1480 * s * Mask(112, 0, _1827) / (10000 * Mask(112, 0, _1848)) + (_1480 * s)
                                mem[_1945 + 68] = 0
                                mem[_1945 + 100] = address(_1705)
                                mem[_1945 + 132] = 128
                                mem[_1945 + 164] = mem[_1945]
                                t = 0
                                while t < mem[_1945]:
                                    mem[_1945 + t + 196] = mem[_1945 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1945]) > mem[_1945]:
                                    mem[_1945 + mem[_1945] + 196] = 0
                                require ext_code.size(address(_1661))
                                call address(_1661).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1480 * s * Mask(112, 0, _1827) / (10000 * Mask(112, 0, _1848)) + (_1480 * s), 0, address(_1705), 128, mem[_1945], mem[_1945 + 196 len ceil32(mem[_1945])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1480 * s * Mask(112, 0, _1827) / (10000 * Mask(112, 0, _1848)) + (_1480 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1485 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1552 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1606 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1664 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1707 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1786 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1828 = mem[_1786]
                                _1850 = mem[_1786 + 32]
                                if address(_1552) < address(_1606):
                                    _1946 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1946 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1946 + 36] = 0
                                    mem[_1946 + 68] = _1485 * s * Mask(112, 0, _1850) / (10000 * Mask(112, 0, _1828)) + (_1485 * s)
                                    mem[_1946 + 100] = address(_1707)
                                    mem[_1946 + 132] = 128
                                    mem[_1946 + 164] = mem[_1946]
                                    t = 0
                                    while t < mem[_1946]:
                                        mem[_1946 + t + 196] = mem[_1946 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1946]) > mem[_1946]:
                                        mem[_1946 + mem[_1946] + 196] = 0
                                    require ext_code.size(address(_1664))
                                    call address(_1664).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1485 * s * Mask(112, 0, _1850) / (10000 * Mask(112, 0, _1828)) + (_1485 * s), address(_1707), 128, mem[_1946], mem[_1946 + 196 len ceil32(mem[_1946])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1485 * s * Mask(112, 0, _1850) / (10000 * Mask(112, 0, _1828)) + (_1485 * s)
                                    continue 
                                _1947 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1947 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1947 + 36] = _1485 * s * Mask(112, 0, _1828) / (10000 * Mask(112, 0, _1850)) + (_1485 * s)
                                mem[_1947 + 68] = 0
                                mem[_1947 + 100] = address(_1707)
                                mem[_1947 + 132] = 128
                                mem[_1947 + 164] = mem[_1947]
                                t = 0
                                while t < mem[_1947]:
                                    mem[_1947 + t + 196] = mem[_1947 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1947]) > mem[_1947]:
                                    mem[_1947 + mem[_1947] + 196] = 0
                                require ext_code.size(address(_1664))
                                call address(_1664).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1485 * s * Mask(112, 0, _1828) / (10000 * Mask(112, 0, _1850)) + (_1485 * s), 0, address(_1707), 128, mem[_1947], mem[_1947 + 196 len ceil32(mem[_1947])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1485 * s * Mask(112, 0, _1828) / (10000 * Mask(112, 0, _1850)) + (_1485 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1490 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1555 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1610 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1667 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1709 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1788 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1829 = mem[_1788]
                                _1852 = mem[_1788 + 32]
                                if address(_1555) < address(_1610):
                                    _1948 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1948 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1948 + 36] = 0
                                    mem[_1948 + 68] = _1490 * s * Mask(112, 0, _1852) / (10000 * Mask(112, 0, _1829)) + (_1490 * s)
                                    mem[_1948 + 100] = address(_1709)
                                    mem[_1948 + 132] = 128
                                    mem[_1948 + 164] = mem[_1948]
                                    t = 0
                                    while t < mem[_1948]:
                                        mem[_1948 + t + 196] = mem[_1948 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1948]) > mem[_1948]:
                                        mem[_1948 + mem[_1948] + 196] = 0
                                    require ext_code.size(address(_1667))
                                    call address(_1667).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1490 * s * Mask(112, 0, _1852) / (10000 * Mask(112, 0, _1829)) + (_1490 * s), address(_1709), 128, mem[_1948], mem[_1948 + 196 len ceil32(mem[_1948])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1490 * s * Mask(112, 0, _1852) / (10000 * Mask(112, 0, _1829)) + (_1490 * s)
                                    continue 
                                _1949 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1949 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1949 + 36] = _1490 * s * Mask(112, 0, _1829) / (10000 * Mask(112, 0, _1852)) + (_1490 * s)
                                mem[_1949 + 68] = 0
                                mem[_1949 + 100] = address(_1709)
                                mem[_1949 + 132] = 128
                                mem[_1949 + 164] = mem[_1949]
                                t = 0
                                while t < mem[_1949]:
                                    mem[_1949 + t + 196] = mem[_1949 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1949]) > mem[_1949]:
                                    mem[_1949 + mem[_1949] + 196] = 0
                                require ext_code.size(address(_1667))
                                call address(_1667).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1490 * s * Mask(112, 0, _1829) / (10000 * Mask(112, 0, _1852)) + (_1490 * s), 0, address(_1709), 128, mem[_1949], mem[_1949 + 196 len ceil32(mem[_1949])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1490 * s * Mask(112, 0, _1829) / (10000 * Mask(112, 0, _1852)) + (_1490 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1495 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1558 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1614 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1670 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1711 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1790 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1830 = mem[_1790]
                                _1854 = mem[_1790 + 32]
                                if address(_1558) < address(_1614):
                                    _1950 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1950 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1950 + 36] = 0
                                    mem[_1950 + 68] = _1495 * s * Mask(112, 0, _1854) / (10000 * Mask(112, 0, _1830)) + (_1495 * s)
                                    mem[_1950 + 100] = address(_1711)
                                    mem[_1950 + 132] = 128
                                    mem[_1950 + 164] = mem[_1950]
                                    t = 0
                                    while t < mem[_1950]:
                                        mem[_1950 + t + 196] = mem[_1950 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1950]) > mem[_1950]:
                                        mem[_1950 + mem[_1950] + 196] = 0
                                    require ext_code.size(address(_1670))
                                    call address(_1670).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1495 * s * Mask(112, 0, _1854) / (10000 * Mask(112, 0, _1830)) + (_1495 * s), address(_1711), 128, mem[_1950], mem[_1950 + 196 len ceil32(mem[_1950])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1495 * s * Mask(112, 0, _1854) / (10000 * Mask(112, 0, _1830)) + (_1495 * s)
                                    continue 
                                _1951 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1951 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1951 + 36] = _1495 * s * Mask(112, 0, _1830) / (10000 * Mask(112, 0, _1854)) + (_1495 * s)
                                mem[_1951 + 68] = 0
                                mem[_1951 + 100] = address(_1711)
                                mem[_1951 + 132] = 128
                                mem[_1951 + 164] = mem[_1951]
                                t = 0
                                while t < mem[_1951]:
                                    mem[_1951 + t + 196] = mem[_1951 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1951]) > mem[_1951]:
                                    mem[_1951 + mem[_1951] + 196] = 0
                                require ext_code.size(address(_1670))
                                call address(_1670).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1495 * s * Mask(112, 0, _1830) / (10000 * Mask(112, 0, _1854)) + (_1495 * s), 0, address(_1711), 128, mem[_1951], mem[_1951 + 196 len ceil32(mem[_1951])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1495 * s * Mask(112, 0, _1830) / (10000 * Mask(112, 0, _1854)) + (_1495 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1500 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1561 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1618 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1673 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1713 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1792 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1831 = mem[_1792]
                                _1856 = mem[_1792 + 32]
                                if address(_1561) < address(_1618):
                                    _1952 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1952 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1952 + 36] = 0
                                    mem[_1952 + 68] = _1500 * s * Mask(112, 0, _1856) / (10000 * Mask(112, 0, _1831)) + (_1500 * s)
                                    mem[_1952 + 100] = address(_1713)
                                    mem[_1952 + 132] = 128
                                    mem[_1952 + 164] = mem[_1952]
                                    t = 0
                                    while t < mem[_1952]:
                                        mem[_1952 + t + 196] = mem[_1952 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1952]) > mem[_1952]:
                                        mem[_1952 + mem[_1952] + 196] = 0
                                    require ext_code.size(address(_1673))
                                    call address(_1673).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1500 * s * Mask(112, 0, _1856) / (10000 * Mask(112, 0, _1831)) + (_1500 * s), address(_1713), 128, mem[_1952], mem[_1952 + 196 len ceil32(mem[_1952])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1500 * s * Mask(112, 0, _1856) / (10000 * Mask(112, 0, _1831)) + (_1500 * s)
                                    continue 
                                _1953 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1953 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1953 + 36] = _1500 * s * Mask(112, 0, _1831) / (10000 * Mask(112, 0, _1856)) + (_1500 * s)
                                mem[_1953 + 68] = 0
                                mem[_1953 + 100] = address(_1713)
                                mem[_1953 + 132] = 128
                                mem[_1953 + 164] = mem[_1953]
                                t = 0
                                while t < mem[_1953]:
                                    mem[_1953 + t + 196] = mem[_1953 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1953]) > mem[_1953]:
                                    mem[_1953 + mem[_1953] + 196] = 0
                                require ext_code.size(address(_1673))
                                call address(_1673).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1500 * s * Mask(112, 0, _1831) / (10000 * Mask(112, 0, _1856)) + (_1500 * s), 0, address(_1713), 128, mem[_1953], mem[_1953 + 196 len ceil32(mem[_1953])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1500 * s * Mask(112, 0, _1831) / (10000 * Mask(112, 0, _1856)) + (_1500 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1505 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1564 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1622 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1676 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1715 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1794 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1832 = mem[_1794]
                                _1858 = mem[_1794 + 32]
                                if address(_1564) < address(_1622):
                                    _1954 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1954 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1954 + 36] = 0
                                    mem[_1954 + 68] = _1505 * s * Mask(112, 0, _1858) / (10000 * Mask(112, 0, _1832)) + (_1505 * s)
                                    mem[_1954 + 100] = address(_1715)
                                    mem[_1954 + 132] = 128
                                    mem[_1954 + 164] = mem[_1954]
                                    t = 0
                                    while t < mem[_1954]:
                                        mem[_1954 + t + 196] = mem[_1954 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1954]) > mem[_1954]:
                                        mem[_1954 + mem[_1954] + 196] = 0
                                    require ext_code.size(address(_1676))
                                    call address(_1676).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1505 * s * Mask(112, 0, _1858) / (10000 * Mask(112, 0, _1832)) + (_1505 * s), address(_1715), 128, mem[_1954], mem[_1954 + 196 len ceil32(mem[_1954])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1505 * s * Mask(112, 0, _1858) / (10000 * Mask(112, 0, _1832)) + (_1505 * s)
                                    continue 
                                _1955 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1955 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1955 + 36] = _1505 * s * Mask(112, 0, _1832) / (10000 * Mask(112, 0, _1858)) + (_1505 * s)
                                mem[_1955 + 68] = 0
                                mem[_1955 + 100] = address(_1715)
                                mem[_1955 + 132] = 128
                                mem[_1955 + 164] = mem[_1955]
                                t = 0
                                while t < mem[_1955]:
                                    mem[_1955 + t + 196] = mem[_1955 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1955]) > mem[_1955]:
                                    mem[_1955 + mem[_1955] + 196] = 0
                                require ext_code.size(address(_1676))
                                call address(_1676).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1505 * s * Mask(112, 0, _1832) / (10000 * Mask(112, 0, _1858)) + (_1505 * s), 0, address(_1715), 128, mem[_1955], mem[_1955 + 196 len ceil32(mem[_1955])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1505 * s * Mask(112, 0, _1832) / (10000 * Mask(112, 0, _1858)) + (_1505 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1510 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1567 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1626 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1679 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1717 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1796 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1833 = mem[_1796]
                                _1860 = mem[_1796 + 32]
                                if address(_1567) < address(_1626):
                                    _1956 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1956 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1956 + 36] = 0
                                    mem[_1956 + 68] = _1510 * s * Mask(112, 0, _1860) / (10000 * Mask(112, 0, _1833)) + (_1510 * s)
                                    mem[_1956 + 100] = address(_1717)
                                    mem[_1956 + 132] = 128
                                    mem[_1956 + 164] = mem[_1956]
                                    t = 0
                                    while t < mem[_1956]:
                                        mem[_1956 + t + 196] = mem[_1956 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1956]) > mem[_1956]:
                                        mem[_1956 + mem[_1956] + 196] = 0
                                    require ext_code.size(address(_1679))
                                    call address(_1679).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1510 * s * Mask(112, 0, _1860) / (10000 * Mask(112, 0, _1833)) + (_1510 * s), address(_1717), 128, mem[_1956], mem[_1956 + 196 len ceil32(mem[_1956])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1510 * s * Mask(112, 0, _1860) / (10000 * Mask(112, 0, _1833)) + (_1510 * s)
                                    continue 
                                _1957 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1957 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1957 + 36] = _1510 * s * Mask(112, 0, _1833) / (10000 * Mask(112, 0, _1860)) + (_1510 * s)
                                mem[_1957 + 68] = 0
                                mem[_1957 + 100] = address(_1717)
                                mem[_1957 + 132] = 128
                                mem[_1957 + 164] = mem[_1957]
                                t = 0
                                while t < mem[_1957]:
                                    mem[_1957 + t + 196] = mem[_1957 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1957]) > mem[_1957]:
                                    mem[_1957 + mem[_1957] + 196] = 0
                                require ext_code.size(address(_1679))
                                call address(_1679).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1510 * s * Mask(112, 0, _1833) / (10000 * Mask(112, 0, _1860)) + (_1510 * s), 0, address(_1717), 128, mem[_1957], mem[_1957 + 196 len ceil32(mem[_1957])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1510 * s * Mask(112, 0, _1833) / (10000 * Mask(112, 0, _1860)) + (_1510 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1515 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1570 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1630 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1682 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1719 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1798 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1834 = mem[_1798]
                                _1862 = mem[_1798 + 32]
                                if address(_1570) < address(_1630):
                                    _1958 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1958 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1958 + 36] = 0
                                    mem[_1958 + 68] = _1515 * s * Mask(112, 0, _1862) / (10000 * Mask(112, 0, _1834)) + (_1515 * s)
                                    mem[_1958 + 100] = address(_1719)
                                    mem[_1958 + 132] = 128
                                    mem[_1958 + 164] = mem[_1958]
                                    t = 0
                                    while t < mem[_1958]:
                                        mem[_1958 + t + 196] = mem[_1958 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1958]) > mem[_1958]:
                                        mem[_1958 + mem[_1958] + 196] = 0
                                    require ext_code.size(address(_1682))
                                    call address(_1682).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1515 * s * Mask(112, 0, _1862) / (10000 * Mask(112, 0, _1834)) + (_1515 * s), address(_1719), 128, mem[_1958], mem[_1958 + 196 len ceil32(mem[_1958])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1515 * s * Mask(112, 0, _1862) / (10000 * Mask(112, 0, _1834)) + (_1515 * s)
                                    continue 
                                _1959 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1959 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1959 + 36] = _1515 * s * Mask(112, 0, _1834) / (10000 * Mask(112, 0, _1862)) + (_1515 * s)
                                mem[_1959 + 68] = 0
                                mem[_1959 + 100] = address(_1719)
                                mem[_1959 + 132] = 128
                                mem[_1959 + 164] = mem[_1959]
                                t = 0
                                while t < mem[_1959]:
                                    mem[_1959 + t + 196] = mem[_1959 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1959]) > mem[_1959]:
                                    mem[_1959 + mem[_1959] + 196] = 0
                                require ext_code.size(address(_1682))
                                call address(_1682).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1515 * s * Mask(112, 0, _1834) / (10000 * Mask(112, 0, _1862)) + (_1515 * s), 0, address(_1719), 128, mem[_1959], mem[_1959 + 196 len ceil32(mem[_1959])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1515 * s * Mask(112, 0, _1834) / (10000 * Mask(112, 0, _1862)) + (_1515 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1520 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1573 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1634 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1685 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1721 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1800 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1835 = mem[_1800]
                                _1864 = mem[_1800 + 32]
                                if address(_1573) < address(_1634):
                                    _1960 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1960 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1960 + 36] = 0
                                    mem[_1960 + 68] = _1520 * s * Mask(112, 0, _1864) / (10000 * Mask(112, 0, _1835)) + (_1520 * s)
                                    mem[_1960 + 100] = address(_1721)
                                    mem[_1960 + 132] = 128
                                    mem[_1960 + 164] = mem[_1960]
                                    t = 0
                                    while t < mem[_1960]:
                                        mem[_1960 + t + 196] = mem[_1960 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1960]) > mem[_1960]:
                                        mem[_1960 + mem[_1960] + 196] = 0
                                    require ext_code.size(address(_1685))
                                    call address(_1685).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1520 * s * Mask(112, 0, _1864) / (10000 * Mask(112, 0, _1835)) + (_1520 * s), address(_1721), 128, mem[_1960], mem[_1960 + 196 len ceil32(mem[_1960])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1520 * s * Mask(112, 0, _1864) / (10000 * Mask(112, 0, _1835)) + (_1520 * s)
                                    continue 
                                _1961 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1961 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1961 + 36] = _1520 * s * Mask(112, 0, _1835) / (10000 * Mask(112, 0, _1864)) + (_1520 * s)
                                mem[_1961 + 68] = 0
                                mem[_1961 + 100] = address(_1721)
                                mem[_1961 + 132] = 128
                                mem[_1961 + 164] = mem[_1961]
                                t = 0
                                while t < mem[_1961]:
                                    mem[_1961 + t + 196] = mem[_1961 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1961]) > mem[_1961]:
                                    mem[_1961 + mem[_1961] + 196] = 0
                                require ext_code.size(address(_1685))
                                call address(_1685).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1520 * s * Mask(112, 0, _1835) / (10000 * Mask(112, 0, _1864)) + (_1520 * s), 0, address(_1721), 128, mem[_1961], mem[_1961 + 196 len ceil32(mem[_1961])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1520 * s * Mask(112, 0, _1835) / (10000 * Mask(112, 0, _1864)) + (_1520 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1525 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1576 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1638 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1688 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1723 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1802 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1836 = mem[_1802]
                                _1866 = mem[_1802 + 32]
                                if address(_1576) < address(_1638):
                                    _1962 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1962 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1962 + 36] = 0
                                    mem[_1962 + 68] = _1525 * s * Mask(112, 0, _1866) / (10000 * Mask(112, 0, _1836)) + (_1525 * s)
                                    mem[_1962 + 100] = address(_1723)
                                    mem[_1962 + 132] = 128
                                    mem[_1962 + 164] = mem[_1962]
                                    t = 0
                                    while t < mem[_1962]:
                                        mem[_1962 + t + 196] = mem[_1962 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1962]) > mem[_1962]:
                                        mem[_1962 + mem[_1962] + 196] = 0
                                    require ext_code.size(address(_1688))
                                    call address(_1688).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1525 * s * Mask(112, 0, _1866) / (10000 * Mask(112, 0, _1836)) + (_1525 * s), address(_1723), 128, mem[_1962], mem[_1962 + 196 len ceil32(mem[_1962])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1525 * s * Mask(112, 0, _1866) / (10000 * Mask(112, 0, _1836)) + (_1525 * s)
                                    continue 
                                _1963 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1963 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1963 + 36] = _1525 * s * Mask(112, 0, _1836) / (10000 * Mask(112, 0, _1866)) + (_1525 * s)
                                mem[_1963 + 68] = 0
                                mem[_1963 + 100] = address(_1723)
                                mem[_1963 + 132] = 128
                                mem[_1963 + 164] = mem[_1963]
                                t = 0
                                while t < mem[_1963]:
                                    mem[_1963 + t + 196] = mem[_1963 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1963]) > mem[_1963]:
                                    mem[_1963 + mem[_1963] + 196] = 0
                                require ext_code.size(address(_1688))
                                call address(_1688).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1525 * s * Mask(112, 0, _1836) / (10000 * Mask(112, 0, _1866)) + (_1525 * s), 0, address(_1723), 128, mem[_1963], mem[_1963 + 196 len ceil32(mem[_1963])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1525 * s * Mask(112, 0, _1836) / (10000 * Mask(112, 0, _1866)) + (_1525 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        mem[512] = arg4
                        mem[544] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[576] = 3
                        mem[608] = arg5
                        mem[640] = arg6
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
                        if arg3 <= ext_call.return_data[0]:
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
                            idx = 0
                            s = arg3
                            while idx < 2:
                                require idx < mem[mem[704]]
                                _1530 = mem[(32 * idx) + mem[704] + 32]
                                require idx < mem[mem[736]]
                                _1579 = mem[(32 * idx) + mem[736] + 32]
                                require idx + 1 < mem[mem[736]]
                                _1642 = mem[(32 * idx + 1) + mem[736] + 32]
                                require idx < mem[mem[768]]
                                _1691 = mem[(32 * idx) + mem[768] + 32]
                                require idx + 1 < mem[mem[768]]
                                _1725 = mem[(32 * idx + 1) + mem[768] + 32]
                                require ext_code.size(mem[(32 * idx) + mem[768] + 44 len 20])
                                staticcall mem[(32 * idx) + mem[768] + 44 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1804 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1837 = mem[_1804]
                                _1868 = mem[_1804 + 32]
                                if address(_1579) < address(_1642):
                                    _1964 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_1964 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_1964 + 36] = 0
                                    mem[_1964 + 68] = _1530 * s * Mask(112, 0, _1868) / (10000 * Mask(112, 0, _1837)) + (_1530 * s)
                                    mem[_1964 + 100] = address(_1725)
                                    mem[_1964 + 132] = 128
                                    mem[_1964 + 164] = mem[_1964]
                                    t = 0
                                    while t < mem[_1964]:
                                        mem[_1964 + t + 196] = mem[_1964 + t + 32]
                                        t = t + 32
                                        continue 
                                    if ceil32(mem[_1964]) > mem[_1964]:
                                        mem[_1964 + mem[_1964] + 196] = 0
                                    require ext_code.size(address(_1691))
                                    call address(_1691).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _1530 * s * Mask(112, 0, _1868) / (10000 * Mask(112, 0, _1837)) + (_1530 * s), address(_1725), 128, mem[_1964], mem[_1964 + 196 len ceil32(mem[_1964])]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = _1530 * s * Mask(112, 0, _1868) / (10000 * Mask(112, 0, _1837)) + (_1530 * s)
                                    continue 
                                _1965 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1965 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1965 + 36] = _1530 * s * Mask(112, 0, _1837) / (10000 * Mask(112, 0, _1868)) + (_1530 * s)
                                mem[_1965 + 68] = 0
                                mem[_1965 + 100] = address(_1725)
                                mem[_1965 + 132] = 128
                                mem[_1965 + 164] = mem[_1965]
                                t = 0
                                while t < mem[_1965]:
                                    mem[_1965 + t + 196] = mem[_1965 + t + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1965]) > mem[_1965]:
                                    mem[_1965 + mem[_1965] + 196] = 0
                                require ext_code.size(address(_1691))
                                call address(_1691).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1530 * s * Mask(112, 0, _1837) / (10000 * Mask(112, 0, _1868)) + (_1530 * s), 0, address(_1725), 128, mem[_1965], mem[_1965 + 196 len ceil32(mem[_1965])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = _1530 * s * Mask(112, 0, _1837) / (10000 * Mask(112, 0, _1868)) + (_1530 * s)
                                continue 
                            if s < mem[800] + stor1:
                                revert with 0, '12'
                        else:
                            mem[ceil32(return_data.size) + 864] = 32
                            mem[ceil32(return_data.size) + 896] = 128
                            mem[ceil32(return_data.size) + 1024] = 2
                            mem[ceil32(return_data.size) + 1056 len 64] = arg1, arg2
                            mem[ceil32(return_data.size) + 928] = 224
                            mem[ceil32(return_data.size) + 1120] = 3
                            idx = 0
                            s = 480
                            t = ceil32(return_data.size) + 1152
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 960] = 352
                            mem[ceil32(return_data.size) + 1248] = 3
                            idx = 0
                            s = 608
                            t = ceil32(return_data.size) + 1280
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 992] = arg3
                            mem[ceil32(return_data.size) + 1376] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 1380] = this.address
                            mem[ceil32(return_data.size) + 1412] = arg3 + -ext_call.return_data[0] + 1
                            mem[ceil32(return_data.size) + 1444] = 96
                            mem[ceil32(return_data.size) + 1476] = mem[ceil32(return_data.size) + 832]
                            mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])] = mem[ceil32(return_data.size) + 864 len ceil32(mem[ceil32(return_data.size) + 832])]
                            if ceil32(mem[ceil32(return_data.size) + 832]) > mem[ceil32(return_data.size) + 832]:
                                mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 832] + 1508] = 0
                            require ext_code.size(0xd528697008ac67a21818751a5e3c58c8dae54696)
                            call 0xd528697008ac67a21818751a5e3c58c8dae54696.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), arg3 + -ext_call.return_data[0] + 1, Array(len=mem[ceil32(return_data.size) + 832], data=mem[ceil32(return_data.size) + 1508 len ceil32(mem[ceil32(return_data.size) + 832])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
}



}
